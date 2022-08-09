// ignore_for_file: prefer_const_constructors

import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/tvrelated/tv_related_bloc.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/relatedtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/colours/colours.dart';

class TvRecommendedList extends StatefulWidget {
  final int tvid;
  const TvRecommendedList({Key? key, required this.tvid}) : super(key: key);

  @override
  State<TvRecommendedList> createState() => _TvRecommendedListState();
}

class _TvRecommendedListState extends State<TvRecommendedList> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<TvRelatedBloc>(context)
            .add(TvRelatedEvent.getrecommended(tvid: widget.tvid, page: page));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvRelatedBloc, TvRelatedState>(
      builder: (context, state) {
        return state.tvshows[0].results.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: orange,
              ))
            : ListView.builder(
                controller: controller,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.tvshows[0].results.length + 1,
                itemBuilder: ((context, index) {
                  if (index < state.tvshows[0].results.length) {
                    final head = state.tvshows[0].results[index];
                    return RelatedTile(
                        id: head.id,
                        ismovie: false,
                        imageurl: head.posterPath != null
                            ? "$posterhead${head.posterPath}"
                            : "",
                        rating: head.rating.toStringAsFixed(1),
                        title: head.name);
                  } else {
                    return page < state.tvshows[0].totalPages
                        ? Center(
                            child: CircularProgressIndicator(
                            color: orange,
                          ))
                        : SizedBox();
                  }
                }));
      },
    );
  }
}
