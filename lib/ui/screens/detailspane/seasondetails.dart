import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/castcrew/cast_crew_bloc.dart';
import 'package:cinemapranthan/bloc/tvseasondetail/tv_season_detail_bloc.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/seasontitlecard.dart';
import 'package:cinemapranthan/utils/date.dart';
import 'package:cinemapranthan/utils/mintohour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../backend/models/tvseasondetail/seasondetail.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../../utils/navigation.dart';
import 'widgets/backimage.dart';
import 'widgets/episodetile.dart';
import 'widgets/moviename.dart';
import 'widgets/starcast.dart';
import 'widgets/titlestyle.dart';

class SeasonDetails extends StatelessWidget {
  final String tvid;
  final String seasonno;
  const SeasonDetails({Key? key, required this.tvid, required this.seasonno})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
      BlocProvider.of<TvSeasonDetailBloc>(context)
          .add(TvSeasonDetailEvent.getdetails(tvid: tvid, seasonno: seasonno));
      BlocProvider.of<SeasonCreditsBloc>(context)
          .add(CastCrewEvent.getseasoncredit(tvid: tvid, seasonno: seasonno));
    }));
    return Scaffold(
      backgroundColor: transparent,
      body:
          SafeArea(child: BlocBuilder<TvSeasonDetailBloc, TvSeasonDetailState>(
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
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: AnimatedOpacity(
                                opacity: top < 150 ? 1.0 : 0.0,
                                duration: const Duration(milliseconds: 300),
                                child: MovieName(
                                    moviename: state.seasondetail[0].name),
                              ),
                            ),
                            centerTitle: true,
                            background: state.isLoading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                        color: orange))
                                : BackImage(
                                    imageurl: state
                                                .seasondetail[0].posterPath !=
                                            null
                                        ? "$backdrophead${state.seasondetail[0].posterPath!}"
                                        : ""),
                          );
                        }),
                        leading: IconButton(
                            onPressed: (() => goback(context)),
                            icon: const Icon(
                              AppIcons.back_arrow,
                              color: white,
                            )),
                      ),
                    ];
                  }),
                  body: CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SeasonTitleCard(
                                heading: state.seasondetail[0].name,
                                date: state.seasondetail[0].airDate != null ||
                                        state.seasondetail[0].airDate
                                            .toString()
                                            .isNotEmpty
                                    ? dateformating(
                                        state.seasondetail[0].airDate)
                                    : "_",
                                runtime:
                                    "${state.seasondetail[0].episodes!.length.toString()} episodes"),
                            if (state.seasondetail[0].overview.isNotEmpty)
                              const TitleStyle(title: "Story Line"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(state.seasondetail[0].overview,
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
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 20.0),
                            child: state.seasondetail[0].episodes!.isNotEmpty
                                ? ListView.separated(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: ((context, index) {
                                      Episode head = state
                                          .seasondetail[0].episodes![index];
                                      return EpisodeTile(
                                          date: head.airDate != null &&
                                                  head.airDate
                                                      .toString()
                                                      .isNotEmpty
                                              ? dateformating(head.airDate)
                                              : "_",
                                          imageurl: head.stillPath != null
                                              ? "$stillhead${head.stillPath}"
                                              : "",
                                          overview: head.overview,
                                          runtime: head.runtime == null
                                              ? "_"
                                              : durationToString(head.runtime!),
                                          episodeno: head.episodeNumber,
                                          heading: head.name,
                                          rating:
                                              head.rating.toStringAsFixed(1));
                                    }),
                                    separatorBuilder: (context, index) =>
                                        const Divider(),
                                    itemCount:
                                        state.seasondetail[0].episodes!.length)
                                : const SizedBox(),
                          );
                        }, childCount: 1),
                      ),
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                              ((context, index) =>
                                  BlocBuilder<SeasonCreditsBloc, CastCrewState>(
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
                              childCount: 1))
                    ],
                  ),
                );
        },
      )),
    );
  }
}
