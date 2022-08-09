import 'package:cinemapranthan/bloc/castcrew/cast_crew_bloc.dart';
import 'package:cinemapranthan/bloc/favourites/favourite_bloc.dart';
import 'package:cinemapranthan/bloc/tvdetail/tv_detail_bloc.dart';
import 'package:cinemapranthan/bloc/tvrelated/tv_related_bloc.dart';

import 'package:cinemapranthan/ui/screens/detailspane/widgets/seasontile.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/tvreclist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import '../../../backend/apicall/movies.dart';
import '../../../backend/db/dboperations.dart';
import '../../../backend/models/favourites/favmodel.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../../utils/navigation.dart';
import 'widgets/backimage.dart';
import 'widgets/moviename.dart';
import 'widgets/movietitlecard.dart';
import 'widgets/starcast.dart';
import 'widgets/titlestyle.dart';

class TvDetails extends StatelessWidget {
  final int id;
  const TvDetails({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((((_) {
      BlocProvider.of<TvDetailBloc>(context)
          .add(TvDetailEvent.gettvdetail(tvid: id.toString()));
      BlocProvider.of<TvShowCreditBloc>(context)
          .add(CastCrewEvent.gettvshowcredit(tvid: id.toString()));
      BlocProvider.of<TvRelatedBloc>(context)
          .add(TvRelatedEvent.getrecommended(tvid: id, page: 1));
    })));
    return Scaffold(
      backgroundColor: transparent,
      body: SafeArea(child: BlocBuilder<TvDetailBloc, TvDetailState>(
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
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: AnimatedOpacity(
                                opacity: top < 150 ? 1.0 : 0.0,
                                duration: const Duration(milliseconds: 300),
                                child: MovieName(
                                    moviename: state.tvdetails[0].name ?? "_"),
                              ),
                            ),
                            centerTitle: true,
                            background: state.isLoading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                        color: orange))
                                : BackImage(
                                    imageurl: state.tvdetails[0].posterPath !=
                                            null
                                        ? "$backdrophead${state.tvdetails[0].posterPath!}"
                                        : ""),
                          );
                        }),
                        leading: IconButton(
                            onPressed: (() => goback(context)),
                            icon: const Icon(
                              AppIcons.back_arrow,
                              color: white,
                            )),
                        actions: [
                          BlocBuilder<TvDetailBloc, TvDetailState>(
                            builder: (context, state) {
                              final head = state.tvdetails[0];
                              return FutureBuilder(
                                  future: DatabaseService()
                                      .checkifFavourited(false, id),
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
                                                      ismovie: false, id: id));
                                          return false;
                                        } else {
                                          final fav = Favourites(
                                              title: head.name,
                                              id: id,
                                              ismovie: false,
                                              backposter: head.backdropPath,
                                              poster: head.posterPath,
                                              rating: head.rating
                                                  .toStringAsFixed(1),
                                              runtime:
                                                  "${head.numberOfEpisodes} episodes");
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
                          language: state.tvdetails[0].originalLanguage ?? "_",
                          rating: state.tvdetails[0].rating.toStringAsFixed(1),
                          genre: state.tvdetails[0].genres,
                          heading: state.tvdetails[0].name ?? "_",
                          year: state.tvdetails[0].firstAirDate.isEmpty ||
                                  state.tvdetails[0].firstAirDate.length < 5
                              ? "_"
                              : state.tvdetails[0].firstAirDate.substring(0, 4),
                          runtime: state.tvdetails[0].numberOfEpisodes == null
                              ? "_"
                              : "${state.tvdetails[0].numberOfEpisodes.toString()} episodes",
                        ),
                      ),
                      state.tvdetails[0].tagline!.isNotEmpty
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
                                    state.tvdetails[0].tagline!,
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
                      state.tvdetails[0].seasons.isNotEmpty
                          ? SliverList(
                              delegate: SliverChildBuilderDelegate(
                                  ((context, index) => Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.35,
                                        margin: const EdgeInsets.only(
                                            top: 25.0, left: 4.0, right: 4.0),
                                        child: ListView.builder(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: ((context, index) {
                                              return SeasonTile(
                                                  tvid: id.toString(),
                                                  seasonno: state
                                                      .tvdetails[0]
                                                      .seasons[index]
                                                      .seasonNumber
                                                      .toString(),
                                                  heading: state.tvdetails[0]
                                                      .seasons[index].name,
                                                  imageurl: state
                                                              .tvdetails[0]
                                                              .seasons[index]
                                                              .posterPath !=
                                                          null
                                                      ? "$posterhead${state.tvdetails[0].seasons[index].posterPath}"
                                                      : "");
                                            }),
                                            itemCount: state
                                                .tvdetails[0].seasons.length),
                                      )),
                                  childCount: 1))
                          : const SliverToBoxAdapter(),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.tvdetails[0].overview!.isNotEmpty)
                              const TitleStyle(title: "Story Line"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(state.tvdetails[0].overview ?? "__",
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
                      BlocBuilder<TvShowCreditBloc, CastCrewState>(
                        builder: (context, state) {
                          return SliverList(
                              delegate: SliverChildBuilderDelegate(
                                  ((context, index) => state.isLoading
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
                                              liste:
                                                  state.castcrewlists[0].cast,
                                            ),
                                            if (state.castcrewlists[0].crew
                                                .isNotEmpty)
                                              const TitleStyle(
                                                  title: "Star Crew"),
                                            StarCast(
                                              liste:
                                                  state.castcrewlists[0].crew,
                                            )
                                          ],
                                        )),
                                  childCount: 1));
                        },
                      ),
                      SliverToBoxAdapter(
                        child: BlocBuilder<TvRelatedBloc, TvRelatedState>(
                          builder: (context, state) {
                            return state.isLoading && state.tvshows.isEmpty
                                ? const Center(
                                    child: CircularProgressIndicator(
                                      color: orange,
                                    ),
                                  )
                                : state.tvshows[0].results.isNotEmpty
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
                                                child: TvRecommendedList(
                                                    tvid: id)),
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
