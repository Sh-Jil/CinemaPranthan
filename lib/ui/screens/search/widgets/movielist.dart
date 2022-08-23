// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/searchmovie/search_movie_bloc.dart';
import '../../../../constants/colours/colours.dart';
import 'searchtile.dart';

class SearchMovieList extends StatefulWidget {
  TextEditingController text;
  SearchMovieList({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SearchMovieList> createState() => _SearchMovieListState();
}

class _SearchMovieListState extends State<SearchMovieList> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<SearchMovieBloc>(context).add(
            SearchMovieEvent.searchmovie(
                moviequery: widget.text.text, page: page));
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
    return BlocBuilder<SearchMovieBloc, SearchMovieState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: orange,
            ),
          );
        } else if (state.movies.isEmpty && widget.text.text.isNotEmpty) {
          return const Center(
            child: Text(
              "No Results to Show",
              style: TextStyle(color: grey, fontSize: 25),
            ),
          );
        } else if (state.movies.isNotEmpty && widget.text.text.isNotEmpty) {
          return ListView.separated(
              controller: controller,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: ((context, itemIndex) {
                if (itemIndex < state.movies.length) {
                  return SearchTile(
                      ismovie: true,
                      overview: state.movies[itemIndex].overview!,
                      id: state.movies[itemIndex].movieid!,
                      heading: state.movies[itemIndex].title == null
                          ? state.movies[itemIndex].name!
                          : state.movies[itemIndex].title!,
                      rating:
                          state.movies[itemIndex].rating!.toStringAsFixed(1),
                      image: state.movies[itemIndex].posterPath != null
                          ? "$posterhead${state.movies[itemIndex].posterPath}"
                          : null,
                      year: state.movies[itemIndex].releasedate == null ||
                              state.movies[itemIndex].releasedate!.length < 5
                          ? "_"
                          : state.movies[itemIndex].releasedate!
                              .substring(0, 4));
                } else {
                  return const Center(
                      child: CircularProgressIndicator(color: orange));
                }
              }),
              separatorBuilder: (context, index) => const Divider(
                    height: 4.0,
                  ),
              itemCount: state.movies.length);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
