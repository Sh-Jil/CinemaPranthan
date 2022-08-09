import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/relatedmovies/related_movies_bloc.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/relatedtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendedList extends StatefulWidget {
  final int id;
  const RecommendedList({Key? key, required this.id}) : super(key: key);

  @override
  State<RecommendedList> createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<RelatedMoviesBloc>(context).add(
            RelatedMoviesEvent.getrecommended(movieid: widget.id, page: page));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedMoviesBloc, RelatedMoviesState>(
      builder: (context, state) {
        return state.movies[0].results.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  color: orange,
                ),
              )
            : ListView.builder(
                controller: controller,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: state.movies[0].results.length + 1,
                itemBuilder: ((context, index) {
                  if (index < state.movies[0].results.length) {
                    final head = state.movies[0].results[index];
                    return RelatedTile(
                        id: head.id,
                        ismovie: true,
                        imageurl: head.posterPath != null
                            ? "$posterhead${head.posterPath}"
                            : "",
                        rating: head.rating.toStringAsFixed(1),
                        title: head.title);
                  } else {
                    return page < state.movies[0].totalPages
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: orange,
                            ),
                          )
                        : const SizedBox();
                  }
                }));
      },
    );
  }
}
