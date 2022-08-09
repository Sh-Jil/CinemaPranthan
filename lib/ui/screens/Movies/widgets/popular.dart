import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/moviebloc/movie_bloc_bloc.dart';
import '../../../../constants/colours/colours.dart';
import '../../../widgets/movietilelist.dart';

class PopularMovieScreen extends StatefulWidget {
  const PopularMovieScreen({Key? key}) : super(key: key);

  @override
  State<PopularMovieScreen> createState() => _PopularMovieScreenState();
}

class _PopularMovieScreenState extends State<PopularMovieScreen> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<PopularMovieBloc>(context)
            .add(MovieEvent.getpopular(page: page));
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
      child: BlocBuilder<PopularMovieBloc, PopularMoviestate>(
        builder: (context, state) {
          return state.popularmovies.isEmpty
              ? const Center(child: CircularProgressIndicator(color: orange))
              : ListView.builder(
                  controller: controller,
                  itemCount: state.popularmovies.length + 1,
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < state.popularmovies.length) {
                      return MovieTileList(
                        id: state.popularmovies[index].movieid!,
                        ismovie: true,
                        heading: state.popularmovies[index].title ?? "_",
                        rating: state.popularmovies[index].rating!
                            .toStringAsFixed(1),
                        imageurl: state.popularmovies[index].posterPath != null
                            ? "$posterhead${state.popularmovies[index].posterPath}"
                            : "",
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: orange,
                        ),
                      );
                    }
                  },
                );
        },
      ),
    );
  }
}
