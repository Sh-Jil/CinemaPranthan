// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../backend/apicall/movies.dart';
import '../../../../bloc/searchtv/searchtv_bloc.dart';
import '../../../../constants/colours/colours.dart';
import 'searchtile.dart';

class SearchTvList extends StatefulWidget {
  TextEditingController text;
  SearchTvList({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SearchTvList> createState() => _SearchTvListState();
}

class _SearchTvListState extends State<SearchTvList> {
  int page = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        page++;
        BlocProvider.of<SearchtvBloc>(context)
            .add(SearchTvEvent.searchtv(tvquery: widget.text.text, page: page));
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
    return BlocBuilder<SearchtvBloc, SearchTvState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: orange,
            ),
          );
        } else if (state.tvshows.isEmpty && widget.text.text.isNotEmpty) {
          return const Center(
            child: Text(
              "No Results to Show",
              style: TextStyle(color: grey, fontSize: 25),
            ),
          );
        } else if (state.tvshows.isNotEmpty && widget.text.text.isNotEmpty) {
          return ListView.separated(
              controller: controller,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: ((context, itemIndex) {
                return SearchTile(
                    ismovie: false,
                    overview: state.tvshows[itemIndex].overview ?? '__',
                    id: state.tvshows[itemIndex].id,
                    heading: state.tvshows[itemIndex].name ?? "_",
                    rating: state.tvshows[itemIndex].rating!.toStringAsFixed(1),
                    image: state.tvshows[itemIndex].posterPath != null
                        ? "$posterhead${state.tvshows[itemIndex].posterPath}"
                        : null,
                    year: state.tvshows[itemIndex].firstAirDate == null ||
                            state.tvshows[itemIndex].firstAirDate!.length < 5
                        ? "_"
                        : state.tvshows[itemIndex].firstAirDate
                            ?.substring(0, 4));
              }),
              separatorBuilder: (context, index) => const Divider(
                    height: 4.0,
                  ),
              itemCount: state.tvshows.length);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
