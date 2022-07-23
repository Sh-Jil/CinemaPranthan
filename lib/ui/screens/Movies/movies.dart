import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/moviebloc/movie_bloc_bloc.dart';
import 'package:cinemapranthan/ui/widgets/tileheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_sheet/side_sheet.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../widgets/aboutdialog.dart';
import '../../widgets/moviepostertile.dart';
import '../../widgets/movietilelist.dart';
import '../../widgets/searchwidget.dart';
import '../../widgets/sidesheet.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
      BlocProvider.of<MovieBlocBloc>(context)
          .add(const MovieEvent.gettrendingmovie());
      BlocProvider.of<PopularMovieBloc>(context)
          .add(const MovieEvent.getpopular());
      BlocProvider.of<NowplayingMovieBloc>(context)
          .add(const MovieEvent.getnowplaying());
      BlocProvider.of<UpcomingMovieBloc>(context)
          .add(const MovieEvent.getupcoming());
      BlocProvider.of<TopRatedmovieBloc>(context)
          .add(const MovieEvent.gettoprated());
    }));

    return SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: ((context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 120,
                  pinned: true,
                  floating: true,
                  collapsedHeight: 70,
                  backgroundColor: darkColour.withOpacity(0.95),
                  leading: IconButton(
                      onPressed: () => SideSheet.left(
                          width: MediaQuery.of(context).size.width * 0.75,
                          body: const SideDrawer(),
                          context: context),
                      icon: const Icon(
                        AppIcons.menu,
                      )),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          AppIcons.notification,
                        )),
                    IconButton(
                        onPressed: () => about(context),
                        icon: const Icon(AppIcons.more_svgrepo_com))
                  ],
                  bottom: const PreferredSize(
                      preferredSize: Size(double.infinity, 10),
                      child: SearchBar(
                        searchtitle: "Search movies..",
                        ismovie: true,
                      )),
                ),
              ];
            }),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                    child: BlocBuilder<MovieBlocBloc, Movieblocstate>(
                  builder: (context, state) {
                    return state.isLoading || state.movies.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(color: orange))
                        : CarouselSlider.builder(
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) {
                              return Center(
                                child: MoviePosterTile(
                                  overview: state.movies[itemIndex].overview!,
                                  id: state.movies[itemIndex].movieid!,
                                  moviename:
                                      state.movies[itemIndex].title == null
                                          ? state.movies[itemIndex].name!
                                          : state.movies[itemIndex].title!,
                                  rating: state.movies[itemIndex].rating!
                                      .toStringAsFixed(1),
                                  backimage:
                                      "$backdrophead${state.movies[itemIndex].backdropPath}",
                                  posterimage:
                                      "$backdrophead${state.movies[itemIndex].posterPath}",
                                  index: itemIndex,
                                ),
                              );
                            },
                            options: CarouselOptions(
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.height,
                                aspectRatio: 1.6,
                                viewportFraction: 0.95,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                enlargeCenterPage: true,
                                autoPlay: true));
                  },
                )),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TileHeading(heading: "Popular"),
                        SizedBox(
                          height: 200,
                          child:
                              BlocBuilder<PopularMovieBloc, PopularMoviestate>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.popularmovies.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state
                                              .popularmovies[index].movieid!,
                                          ismovie: true,
                                          heading:
                                              state.popularmovies[index].title!,
                                          rating: state
                                              .popularmovies[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.popularmovies[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        const TileHeading(heading: "Now Playing"),
                        SizedBox(
                          height: 200,
                          child:
                              BlocBuilder<NowplayingMovieBloc, NowplayingState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.nowplayingmovies.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state
                                              .nowplayingmovies[index].movieid!,
                                          ismovie: true,
                                          heading: state
                                              .nowplayingmovies[index].title!,
                                          rating: state
                                              .nowplayingmovies[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.nowplayingmovies[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        const TileHeading(heading: "Upcoming"),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<UpcomingMovieBloc, UpcomingState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.upcomingmovies.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state
                                              .upcomingmovies[index].movieid!,
                                          ismovie: true,
                                          heading: state
                                              .upcomingmovies[index].title!,
                                          rating: state
                                              .upcomingmovies[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.upcomingmovies[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        const TileHeading(heading: "Top Rated"),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<TopRatedmovieBloc, TopratedState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.topratedmovies.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state
                                              .topratedmovies[index].movieid!,
                                          ismovie: true,
                                          heading: state
                                              .topratedmovies[index].title!,
                                          rating: state
                                              .topratedmovies[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.topratedmovies[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1)
                      ],
                    );
                  }, childCount: 1),
                ),
              ],
            )));
  }
}
