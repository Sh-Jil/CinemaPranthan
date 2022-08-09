import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/moviebloc/movie_bloc_bloc.dart';
import '../../../../constants/colours/colours.dart';
import '../../../widgets/movietilelist.dart';

class NowPlayingMOvieScreen extends StatefulWidget {
  const NowPlayingMOvieScreen({Key? key}) : super(key: key);

  @override
  State<NowPlayingMOvieScreen> createState() => _NowPlayingMOvieScreenState();
}

class _NowPlayingMOvieScreenState extends State<NowPlayingMOvieScreen> {
  int page = 1;
  ScrollController controller = ScrollController();
  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<NowplayingMovieBloc>(context)
            .add(MovieEvent.getnowplaying(page: page));
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
      child: BlocBuilder<NowplayingMovieBloc, NowplayingState>(
        builder: (context, state) {
          return state.nowplayingmovies.isEmpty
              ? const Center(child: CircularProgressIndicator(color: orange))
              : ListView.builder(
                  controller: controller,
                  itemCount: state.nowplayingmovies.length + 1,
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < state.nowplayingmovies.length) {
                      return MovieTileList(
                        id: state.nowplayingmovies[index].movieid!,
                        ismovie: true,
                        heading: state.nowplayingmovies[index].title ?? "_",
                        rating: state.nowplayingmovies[index].rating!
                            .toStringAsFixed(1),
                        imageurl: state.nowplayingmovies[index].posterPath !=
                                null
                            ? "$posterhead${state.nowplayingmovies[index].posterPath}"
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
