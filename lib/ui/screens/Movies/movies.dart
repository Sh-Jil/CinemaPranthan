import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/moviebloc/movie_bloc_bloc.dart';

import 'package:cinemapranthan/ui/screens/Movies/widgets/popular.dart';
import 'package:cinemapranthan/ui/screens/Movies/widgets/toprated.dart';
import 'package:cinemapranthan/ui/screens/Movies/widgets/upcoming.dart';

import 'package:cinemapranthan/ui/widgets/tileheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_sheet/side_sheet.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../widgets/moviepostertile.dart';
import '../../widgets/searchwidget.dart';
import '../../widgets/sidesheet.dart';

import 'widgets/nowplaying.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
      BlocProvider.of<MovieBlocBloc>(context)
          .add(const MovieEvent.gettrendingmovie());
      BlocProvider.of<PopularMovieBloc>(context)
          .add(const MovieEvent.getpopular(page: 1));
      BlocProvider.of<NowplayingMovieBloc>(context)
          .add(const MovieEvent.getnowplaying(page: 1));
      BlocProvider.of<UpcomingMovieBloc>(context)
          .add(const MovieEvent.getupcoming(page: 1));
      BlocProvider.of<TopRatedmovieBloc>(context)
          .add(const MovieEvent.gettoprated(page: 1));
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
                    /* IconButton(
                        onPressed: () => about(context),
                        icon: const Icon(AppIcons.more_svgrepo_com)) */
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
                    return state.movies.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(color: orange))
                        : CarouselSlider.builder(
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) {
                              return Center(
                                child: MoviePosterTile(
                                  key: UniqueKey(),
                                  ismovie: true,
                                  id: state.movies[itemIndex].movieid!,
                                  moviename:
                                      state.movies[itemIndex].title == null
                                          ? state.movies[itemIndex].name!
                                          : state.movies[itemIndex].title!,
                                  rating: state.movies[itemIndex].rating!
                                      .toStringAsFixed(1),
                                  backimage:
                                      "$backdrophead${state.movies[itemIndex].backdropPath}",
                                  index: itemIndex,
                                ),
                              );
                            },
                            options: CarouselOptions(
                                pauseAutoPlayInFiniteScroll: true,
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
                        const PopularMovieScreen(),
                        const TileHeading(heading: "Now Playing"),
                        const NowPlayingMOvieScreen(),
                        const TileHeading(heading: "Upcoming"),
                        const UPComingMovieScreen(),
                        const TileHeading(heading: "Top Rated"),
                        const TopratedMovieScreen(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2)
                      ],
                    );
                  }, childCount: 1),
                ),
              ],
            )));
  }
}
