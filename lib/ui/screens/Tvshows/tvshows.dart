import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/bloc/tvbloc/tvbloc_bloc.dart';

import 'package:cinemapranthan/ui/screens/Tvshows/widgets/airingtoday.dart';
import 'package:cinemapranthan/ui/screens/Tvshows/widgets/ontv.dart';
import 'package:cinemapranthan/ui/screens/Tvshows/widgets/popular.dart';
import 'package:cinemapranthan/ui/screens/Tvshows/widgets/toprated.dart';

import 'package:cinemapranthan/ui/widgets/tileheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_sheet/side_sheet.dart';
import '../../../backend/apicall/movies.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../widgets/aboutdialog.dart';
import '../../widgets/moviepostertile.dart';
import '../../widgets/searchwidget.dart';
import '../../widgets/sidesheet.dart';

class TvShows extends StatelessWidget {
  const TvShows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(((_) {
      BlocProvider.of<TvblocBloc>(context).add(const TvblocEvent.getlatesttv());
      BlocProvider.of<PopulartvBloc>(context)
          .add(const TvblocEvent.getpopulartv(page: 1));
      BlocProvider.of<AiringTodayBloc>(context)
          .add(const TvblocEvent.getairingtoday(page: 1));
      BlocProvider.of<OnTVBloc>(context)
          .add(const TvblocEvent.getontv(page: 1));
      BlocProvider.of<TopratedTvBloc>(context)
          .add(const TvblocEvent.gettopratedtv(page: 1));
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
                    /*  IconButton(
                        onPressed: () => about(context),
                        icon: const Icon(AppIcons.more_svgrepo_com)) */
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
                                  key: UniqueKey(),
                                  ismovie: false,
                                  id: state.tvshows[itemIndex].id,
                                  moviename:
                                      state.tvshows[itemIndex].name ?? '_',
                                  rating: state.tvshows[itemIndex].rating!
                                      .toStringAsFixed(1),
                                  backimage: state.tvshows[itemIndex]
                                              .backdropPath !=
                                          null
                                      ? "$backdrophead${state.tvshows[itemIndex].backdropPath}"
                                      : "",
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
                        const PopularTvScreen(),
                        const TileHeading(heading: "Airing Today"),
                        const AiringTodayTvScreen(),
                        const TileHeading(heading: "On TV"),
                        const OnTvScreen(),
                        const TileHeading(heading: "Top Rated"),
                        const TopratedTvScreen(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2)
                      ],
                    );
                  }, childCount: 1),
                )
              ],
            )));
  }
}
