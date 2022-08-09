import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/moviebloc/movie_bloc_bloc.dart';
import '../../../../constants/colours/colours.dart';
import '../../../widgets/movietilelist.dart';

class UPComingMovieScreen extends StatefulWidget {
  const UPComingMovieScreen({Key? key}) : super(key: key);

  @override
  State<UPComingMovieScreen> createState() => _UPComingMovieScreenState();
}

class _UPComingMovieScreenState extends State<UPComingMovieScreen> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<UpcomingMovieBloc>(context)
            .add(MovieEvent.getupcoming(page: page));
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
      child: BlocBuilder<UpcomingMovieBloc, UpcomingState>(
        builder: (context, state) {
          return state.upcomingmovies.isEmpty
              ? const Center(child: CircularProgressIndicator(color: orange))
              : ListView.builder(
                  controller: controller,
                  itemCount: state.upcomingmovies.length + 1,
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < state.upcomingmovies.length) {
                      return MovieTileList(
                        id: state.upcomingmovies[index].movieid!,
                        ismovie: true,
                        heading: state.upcomingmovies[index].title ?? "_",
                        rating: state.upcomingmovies[index].rating!
                            .toStringAsFixed(1),
                        imageurl: state.upcomingmovies[index].posterPath != null
                            ? "$posterhead${state.upcomingmovies[index].posterPath}"
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
