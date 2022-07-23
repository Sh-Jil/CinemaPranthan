import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/bloc/tvbloc/tvbloc_bloc.dart';
import 'package:cinemapranthan/ui/widgets/tileheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_sheet/side_sheet.dart';
import '../../../backend/apicall/movies.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../widgets/aboutdialog.dart';
import '../../widgets/moviepostertile.dart';
import '../../widgets/movietilelist.dart';
import '../../widgets/searchwidget.dart';
import '../../widgets/sidesheet.dart';

class TvShows extends StatelessWidget {
  TvShows({Key? key}) : super(key: key);

  final List<String> tvcat = ["Popular", "Airing Today", "On Tv", "Top Rated"];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(((_) {
      BlocProvider.of<TvblocBloc>(context).add(const TvblocEvent.getlatesttv());
      BlocProvider.of<PopulartvBloc>(context)
          .add(const TvblocEvent.getpopulartv());
      BlocProvider.of<AiringTodayBloc>(context)
          .add(const TvblocEvent.getairingtoday());
      BlocProvider.of<OnTVBloc>(context).add(const TvblocEvent.getontv());
      BlocProvider.of<TopratedTvBloc>(context)
          .add(const TvblocEvent.gettopratedtv());
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
                        searchtitle: "Search Tv Shows..",
                        ismovie: false,
                      )),
                ),
              ];
            }),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: BlocBuilder<TvblocBloc, TvblocState>(
                  builder: (context, state) {
                    return state.isLoading || state.tvshows.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(
                            color: orange,
                          ))
                        : CarouselSlider.builder(
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) {
                              return Center(
                                child: MoviePosterTile(
                                  overview:
                                      state.tvshows[itemIndex].overview ?? "__",
                                  id: state.tvshows[itemIndex].id,
                                  moviename:
                                      state.tvshows[itemIndex].name ?? '_',
                                  rating: state.tvshows[itemIndex].rating!
                                      .toStringAsFixed(1),
                                  backimage:
                                      "$backdrophead${state.tvshows[itemIndex].backdropPath}",
                                  posterimage:
                                      "$backdrophead${state.tvshows[itemIndex].posterPath}",
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
                        TileHeading(heading: tvcat[0]),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<PopulartvBloc, PopularTvState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.tvshows.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state.tvshows[index].id,
                                          ismovie: false,
                                          heading:
                                              state.tvshows[index].name ?? '_',
                                          rating: state.tvshows[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.tvshows[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        TileHeading(heading: tvcat[1]),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<AiringTodayBloc, AiringtodayState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.tvshows.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state.tvshows[index].id,
                                          ismovie: false,
                                          heading:
                                              state.tvshows[index].name ?? '_',
                                          rating: state.tvshows[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.tvshows[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        TileHeading(heading: tvcat[2]),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<OnTVBloc, OnTvSTate>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.tvshows.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state.tvshows[index].id,
                                          ismovie: false,
                                          heading:
                                              state.tvshows[index].name ?? '_',
                                          rating: state.tvshows[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.tvshows[index].posterPath}",
                                        );
                                      },
                                    );
                            },
                          ),
                        ),
                        TileHeading(heading: tvcat[3]),
                        SizedBox(
                          height: 200,
                          child: BlocBuilder<TopratedTvBloc, TopratedTvState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : ListView.builder(
                                      itemCount: state.tvshows.length,
                                      padding: const EdgeInsets.all(16.0),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return MovieTileList(
                                          id: state.tvshows[index].id,
                                          ismovie: false,
                                          heading:
                                              state.tvshows[index].name ?? '_',
                                          rating: state.tvshows[index].rating!
                                              .toStringAsFixed(1),
                                          imageurl:
                                              "$backdrophead${state.tvshows[index].posterPath}",
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
                )
              ],
            )));
  }
}
