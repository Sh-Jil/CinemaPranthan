import 'dart:developer';

import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/castcrew/cast_crew_bloc.dart';
import 'package:cinemapranthan/bloc/moviedetail/movie_detail_bloc.dart';
import 'package:cinemapranthan/constants/Icons/appicons.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/backimage.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/moviename.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/movietitlecard.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/starcast.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/titlestyle.dart';
import 'package:cinemapranthan/utils/mintohour.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';

class Details extends StatelessWidget {
  final int id;
  const Details({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(((_) {
      BlocProvider.of<MovieDetailBloc>(context)
          .add(MovieDetailEvent.getmoviedetail(movieparam: id.toString()));
      BlocProvider.of<CastCrewBloc>(context)
          .add(CastCrewEvent.getcastcrew(movieid: id.toString()));
    }));
    /* Future.delayed(
        Duration.zero,
        () => BlocProvider.of<MovieDetailBloc>(context)
            .add(MovieDetailEvent.getmoviedetail(movieparam: id.toString()))); */
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
                    var top = 0.0;
                    return <Widget>[
                      SliverAppBar(
                        elevation: 10.0,
                        stretch: true,
                        backgroundColor: darkColour.withOpacity(0.95),
                        pinned: true,
                        collapsedHeight: kToolbarHeight,
                        floating: true,
                        expandedHeight:
                            MediaQuery.of(context).size.height * 0.6,
                        flexibleSpace:
                            LayoutBuilder(builder: (context, constraints) {
                          top = constraints.biggest.height;
                          return FlexibleSpaceBar(
                            title: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: AnimatedOpacity(
                                opacity: top < 150 ? 1.0 : 0.0,
                                duration: const Duration(milliseconds: 300),
                                child: MovieName(
                                    moviename:
                                        state.moviedetail[0].title ?? "_"),
                              ),
                            ),
                            centerTitle: true,
                            background: state.isLoading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                        color: orange))
                                : BackImage(
                                    imageurl: state.moviedetail[0].posterPath !=
                                            null
                                        ? "$backdrophead${state.moviedetail[0].posterPath!}"
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
                          LikeButton(
                            likeBuilder: (isLiked) {
                              return Icon(
                                AppIcons.heart,
                                color: isLiked ? orange : white,
                              );
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
                          rating: state.moviedetail[0].rating.toString(),
                          genre: state.moviedetail[0].genres!,
                          heading: state.moviedetail[0].title ?? "_",
                          year: state.moviedetail[0].releaseDate.isEmpty ||
                                  state.moviedetail[0].releaseDate.length < 5
                              ? "_"
                              : state.moviedetail[0].releaseDate
                                  .substring(0, 4),
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
                            const TitleStyle(title: "Story Line"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(state.moviedetail[0].overview ?? "_",
                                  style: const TextStyle(
                                      color: grey,
                                      fontSize: 16.0,
                                      letterSpacing: 1.0),
                                  textAlign: TextAlign.start),
                            ),
                          ],
                        ),
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
                                                const TitleStyle(
                                                    title: "Star Cast"),
                                                StarCast(
                                                  liste: state
                                                      .castcrewlists[0].cast,
                                                ),
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
                              childCount: 1))
                    ],
                  ),
                );
        },
      )),
    );
  }
}
