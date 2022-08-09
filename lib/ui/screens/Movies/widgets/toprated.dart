import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/moviebloc/movie_bloc_bloc.dart';
import '../../../../constants/colours/colours.dart';
import '../../../widgets/movietilelist.dart';

class TopratedMovieScreen extends StatefulWidget {
  const TopratedMovieScreen({Key? key}) : super(key: key);

  @override
  State<TopratedMovieScreen> createState() => _TopratedMovieScreenState();
}

class _TopratedMovieScreenState extends State<TopratedMovieScreen> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<TopRatedmovieBloc>(context)
            .add(MovieEvent.gettoprated(page: page));
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
    return SizedBox(
      height: 200,
      child: BlocBuilder<TopRatedmovieBloc, TopratedState>(
        builder: (context, state) {
          return state.topratedmovies.isEmpty
              ? const Center(child: CircularProgressIndicator(color: orange))
              : ListView.builder(
                  controller: controller,
                  itemCount: state.topratedmovies.length + 1,
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < state.topratedmovies.length) {
                      return MovieTileList(
                        id: state.topratedmovies[index].movieid!,
                        ismovie: true,
                        heading: state.topratedmovies[index].title ?? "_",
                        rating: state.topratedmovies[index].rating!
                            .toStringAsFixed(1),
                        imageurl: state.topratedmovies[index].posterPath != null
                            ? "$posterhead${state.topratedmovies[index].posterPath}"
                            : "",
                      );
                    } else {
                      return const Center(
                          child: CircularProgressIndicator(color: orange));
                    }
                  },
                );
        },
      ),
    );
  }
}
