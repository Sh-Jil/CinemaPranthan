import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/tvbloc/tvbloc_bloc.dart';
import '../../../../constants/colours/colours.dart';
import '../../../widgets/movietilelist.dart';

class OnTvScreen extends StatefulWidget {
  const OnTvScreen({Key? key}) : super(key: key);

  @override
  State<OnTvScreen> createState() => _OnTvScreenState();
}

class _OnTvScreenState extends State<OnTvScreen> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<OnTVBloc>(context).add(TvblocEvent.getontv(page: page));
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
      child: BlocBuilder<OnTVBloc, OnTvSTate>(
        builder: (context, state) {
          return state.tvshows.isEmpty
              ? const Center(child: CircularProgressIndicator(color: orange))
              : ListView.builder(
                  controller: controller,
                  itemCount: state.tvshows.length + 1,
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index < state.tvshows.length) {
                      return MovieTileList(
                        id: state.tvshows[index].id,
                        ismovie: false,
                        heading: state.tvshows[index].name ?? '_',
                        rating: state.tvshows[index].rating!.toStringAsFixed(1),
                        imageurl: state.tvshows[index].posterPath != null
                            ? "$posterhead${state.tvshows[index].posterPath}"
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
