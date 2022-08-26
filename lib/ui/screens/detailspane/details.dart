import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/Images/poster_images_bloc.dart';
import 'package:cinemapranthan/bloc/castcrew/cast_crew_bloc.dart';
import 'package:cinemapranthan/bloc/moviedetail/movie_detail_bloc.dart';

import 'package:cinemapranthan/backend/db/dboperations.dart';
import 'package:cinemapranthan/backend/models/favourites/favmodel.dart';
import 'package:cinemapranthan/bloc/favourites/favourite_bloc.dart';
import 'package:cinemapranthan/bloc/relatedmovies/related_movies_bloc.dart';

import 'package:cinemapranthan/constants/Icons/appicons.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/collectionscreen.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/backimage.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/moviename.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/movietitlecard.dart';

import 'package:cinemapranthan/ui/screens/detailspane/widgets/recommendedlist.dart';

import 'package:cinemapranthan/ui/screens/detailspane/widgets/starcast.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/titlestyle.dart';
import 'package:cinemapranthan/ui/widgets/glasscontainer.dart';
import 'package:cinemapranthan/utils/date.dart';
import 'package:cinemapranthan/utils/mintohour.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';

class Details extends StatelessWidget {
  final int id;
  const Details({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    WidgetsBinding.instance.addPostFrameCallback(((_) {
      BlocProvider.of<MovieDetailBloc>(context)
          .add(MovieDetailEvent.getmoviedetail(movieparam: id.toString()));
      BlocProvider.of<PosterImagesBloc>(context)
          .add(PosterImagesEvent.getmovieimages(movieid: id));
      BlocProvider.of<CastCrewBloc>(context)
          .add(CastCrewEvent.getcastcrew(movieid: id.toString()));
      BlocProvider.of<RelatedMoviesBloc>(context)
          .add(RelatedMoviesEvent.getrecommended(movieid: id, page: 1));
    }));

    return Scaffold(
      backgroundColor: transparent,
      body: SafeArea(child: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: orange,
                ))
              : NestedScrollView(
                  headerSliverBuilder: ((context, innerBoxIsScrolled) {
                    double top = 0.0;

                    return <Widget>[
                      SliverAppBar(
                        elevation: 10.0,
                        stretch: true,
                        backgroundColor: darkColour.withOpacity(0.95),
                        pinned: true,
                        collapsedHeight: kToolbarHeight,
                        floating: true,
                        expandedHeight:
                            MediaQuery.of(context).size.height * 0.7,
                        flexibleSpace:
                            LayoutBuilder(builder: (context, constraints) {
                          top = constraints.biggest.height;
                          return FlexibleSpaceBar(
                            title: SizedBox(
                              width: width * 0.8,
                              child: AnimatedOpacity(
                                opacity: top < 150 ? 1.0 : 0.0,
                                duration: const Duration(milliseconds: 300),
                                child: MovieName(
                                    moviename:
                                        state.moviedetail[0].title ?? "_"),
                              ),
                            ),
                            centerTitle: true,
                            background: BlocBuilder<PosterImagesBloc,
                                PosterImagesState>(
                              builder: (context, state) {
                                return state.isLoading
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                            color: orange))
                                    : BackImage(
                                        imagelist: state.imagelist,
                                      );
                              },
                            ),
                          );
                        }),
                        leading: IconButton(
                            onPressed: (() => goback(context)),
                            icon: const Icon(
                              AppIcons.back_arrow,
                              color: white,
                            )),
                        actions: [
                          BlocBuilder<MovieDetailBloc, MovieDetailState>(
                            builder: (context, state) {
                              final head = state.moviedetail[0];
                              return FutureBuilder(
                                  future: DatabaseService()
                                      .checkifFavourited(true, id),
                                  builder:
                                      (context, AsyncSnapshot<bool> snapshot) {
                                    return LikeButton(
                                      isLiked: snapshot.data,
                                      onTap: (isLiked) async {
                                        if (isLiked) {
                                          BlocProvider.of<FavouriteBloc>(
                                                  context)
                                              .add(
                                                  FavouriteEvent.removefavorite(
                                                      ismovie: true, id: id));
                                          return false;
                                        } else {
                                          final fav = Favourites(
                                              title: head.title,
                                              id: id,
                                              ismovie: true,
                                              backposter: head.backdropPath,
                                              poster: head.posterPath,
                                              rating: head.rating
                                                  .toStringAsFixed(1),
                                              runtime: durationToString(
                                                  head.runtime!));
                                          DatabaseService().addtoFav(fav);

                                          return !isLiked;
                                        }
                                      },
                                      likeBuilder: (isLiked) {
                                        return Icon(
                                          AppIcons.heart,
                                          color: isLiked && snapshot.hasData
                                              ? orange
                                              : white,
                                        );
                                      },
                                    );
                                  });
                            },
                          )
                        ],
                      ),
                    ];
                  }),
                  body: CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverToBoxAdapter(
                        child: MovieTitleCard(
                          language:
                              state.moviedetail[0].originalLanguage ?? "_",
                          rating:
                              state.moviedetail[0].rating.toStringAsFixed(1),
                          genre: state.moviedetail[0].genres!,
                          heading: state.moviedetail[0].title ?? "_",
                          year: state.moviedetail[0].releaseDate.isEmpty ||
                                  state.moviedetail[0].releaseDate.length < 5
                              ? "_"
                              : dateformating(DateTime.parse(
                                  state.moviedetail[0].releaseDate)),
                          runtime: state.moviedetail[0].runtime == null
                              ? "_"
                              : durationToString(state.moviedetail[0].runtime!),
                        ),
                      ),
                      state.moviedetail[0].tagline!.isNotEmpty
                          ? SliverToBoxAdapter(
                              child: Center(
                                  child: Container(
                                margin: const EdgeInsets.only(top: 16.0),
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                    color: darkGrey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(50.0)),
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                  child: Text(
                                    state.moviedetail[0].tagline!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        letterSpacing: 1.0,
                                        color: white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              )),
                            )
                          : const SliverToBoxAdapter(),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.moviedetail[0].overview!.isNotEmpty)
                              const TitleStyle(title: "Story Line"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(state.moviedetail[0].overview ?? "_",
                                  style: const TextStyle(
                                      height: 1.5,
                                      color: grey,
                                      fontSize: 16.0,
                                      letterSpacing: 1.0),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: state.moviedetail[0].belongsToCollection != null
                            ? InkWell(
                                onTap: () => goto(
                                    context,
                                    CollectionScreen(
                                      collectionId: state.moviedetail[0]
                                          .belongsToCollection!.id,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 20.0),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: state
                                                        .moviedetail[0]
                                                        .belongsToCollection!
                                                        .backdropPath !=
                                                    null &&
                                                state
                                                    .moviedetail[0]
                                                    .belongsToCollection!
                                                    .backdropPath!
                                                    .isNotEmpty
                                            ? CachedNetworkImage(
                                                imageUrl:
                                                    "$backdrophead${state.moviedetail[0].belongsToCollection!.backdropPath}")
                                            : Image.asset(
                                                'assets/images/f0fc1ca20e08d638195b9-removebg-preview.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GlassContainer(
                                          width: width * 0.7,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 16.0),
                                          blurPower: 25.0,
                                          gradientColors: [
                                            grey.withOpacity(0.3),
                                            grey.withOpacity(0.3)
                                          ],
                                          child: Text(
                                              "View ${state.moviedetail[0].belongsToCollection!.name}",
                                              softWrap: true,
                                              maxLines: 3,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.5,
                                                  color: white,
                                                  fontSize: 16.0,
                                                  letterSpacing: 1.0),
                                              textAlign: TextAlign.center),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ),
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                              ((context, index) =>
                                  BlocBuilder<CastCrewBloc, CastCrewState>(
                                    builder: (context, state) {
                                      return state.isLoading
                                          ? const Center(
                                              child: CircularProgressIndicator(
                                              color: orange,
                                            ))
                                          : Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (state.castcrewlists[0].cast
                                                    .isNotEmpty)
                                                  const TitleStyle(
                                                      title: "Star Cast"),
                                                StarCast(
                                                  liste: state
                                                      .castcrewlists[0].cast,
                                                ),
                                                if (state.castcrewlists[0].crew
                                                    .isNotEmpty)
                                                  const TitleStyle(
                                                      title: "Star Crew"),
                                                StarCast(
                                                  liste: state
                                                      .castcrewlists[0].crew,
                                                )
                                              ],
                                            );
                                    },
                                  )),
                              childCount: 1)),
                      SliverToBoxAdapter(
                        child:
                            BlocBuilder<RelatedMoviesBloc, RelatedMoviesState>(
                          builder: (context, state) {
                            return state.isLoading && state.movies.isEmpty
                                ? const Center(
                                    child: CircularProgressIndicator(
                                      color: orange,
                                    ),
                                  )
                                : state.movies[0].results.isNotEmpty
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TitleStyle(
                                              title: "Recommended"),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.4,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: RecommendedList(
                                                id: id,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : const SizedBox();
                          },
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 100.0,
                        ),
                      )
                    ],
                  ),
                );
        },
      )),
    );
  }
}
