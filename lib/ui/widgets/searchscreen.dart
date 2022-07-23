import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/searchmovie/search_movie_bloc.dart';
import 'package:cinemapranthan/bloc/searchtv/searchtv_bloc.dart';
import 'package:cinemapranthan/ui/widgets/searchtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../backend/utils/debounce.dart';
import '../../constants/Icons/appicons.dart';
import '../../constants/colours/colours.dart';
import '../../utils/navigation.dart';

class SearchScreen extends StatefulWidget {
  final String searchtitle;
  final bool ismovie;
  const SearchScreen(
      {Key? key, required this.searchtitle, required this.ismovie})
      : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _debouncer = Debouncer(delay: const Duration(milliseconds: 750));
  TextEditingController text = TextEditingController();

  @override
  void dispose() {
    text.clear();
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(size.width * 0.95, 10),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  minWidth: 15.0,
                  height: 50.0,
                  color: orange.withOpacity(0.8),
                  onPressed: () {
                    return goback(context);
                  },
                  child: const Icon(
                    AppIcons.back_arrow,
                    color: Colors.white,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(2.0),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: darkGrey.withOpacity(0.3),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.all(
                            Radius.elliptical(15.0, 15.0))),
                    child: TextField(
                      onChanged: ((value) {
                        _debouncer.call(() {
                          widget.ismovie
                              ? BlocProvider.of<SearchMovieBloc>(context).add(
                                  SearchMovieEvent.searchmovie(
                                      moviequery: value))
                              : BlocProvider.of<SearchtvBloc>(context)
                                  .add(SearchTvEvent.searchtv(tvquery: value));
                        });
                      }),
                      controller: text,
                      textInputAction: TextInputAction.search,
                      keyboardAppearance: Brightness.dark,
                      autofocus: true,
                      cursorColor: darkGrey.withOpacity(0.5),
                      style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                          color: lightgrey.withOpacity(0.5)),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: lightgrey.withOpacity(0.5),
                              letterSpacing: 1.0),
                          hintText: widget.searchtitle,
                          border: InputBorder.none,
                          filled: true,
                          fillColor: transparent),
                    )),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: darkColour,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.ismovie
              ? BlocBuilder<SearchMovieBloc, SearchMovieState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: orange,
                        ),
                      );
                    } else if (state.movies.isEmpty && text.text.isNotEmpty) {
                      return const Center(
                        child: Text(
                          "No Results to Show",
                          style: TextStyle(color: grey, fontSize: 25),
                        ),
                      );
                    } else if (state.movies.isNotEmpty &&
                        text.text.isNotEmpty) {
                      return ListView.separated(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: ((context, itemIndex) {
                            return SearchTile(
                                overview: state.movies[itemIndex].overview!,
                                id: state.movies[itemIndex].movieid!,
                                heading: state.movies[itemIndex].title == null
                                    ? state.movies[itemIndex].name!
                                    : state.movies[itemIndex].title!,
                                rating: state.movies[itemIndex].rating!
                                    .toStringAsFixed(1),
                                image: state.movies[itemIndex].posterPath !=
                                        null
                                    ? "$posterhead${state.movies[itemIndex].posterPath}"
                                    : null,
                                year: state.movies[itemIndex].releasedate ==
                                            null ||
                                        state.movies[itemIndex].releasedate!
                                                .length <
                                            5
                                    ? "_"
                                    : state.movies[itemIndex].releasedate!
                                        .substring(0, 4));
                          }),
                          separatorBuilder: (context, index) => const Divider(
                                height: 4.0,
                              ),
                          itemCount: state.movies.length);
                    } else {
                      return const SizedBox();
                    }
                  },
                )
              : BlocBuilder<SearchtvBloc, SearchTvState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: orange,
                        ),
                      );
                    } else if (state.tvshows.isEmpty && text.text.isNotEmpty) {
                      return const Center(
                        child: Text(
                          "No Results to Show",
                          style: TextStyle(color: grey, fontSize: 25),
                        ),
                      );
                    } else if (state.tvshows.isNotEmpty &&
                        text.text.isNotEmpty) {
                      return ListView.separated(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: ((context, itemIndex) {
                            return SearchTile(
                                overview:
                                    state.tvshows[itemIndex].overview ?? '__',
                                id: state.tvshows[itemIndex].id,
                                heading: state.tvshows[itemIndex].name ?? "_",
                                rating: state.tvshows[itemIndex].rating!
                                    .toStringAsFixed(1),
                                image: state.tvshows[itemIndex].posterPath !=
                                        null
                                    ? "$posterhead${state.tvshows[itemIndex].posterPath}"
                                    : null,
                                year: state.tvshows[itemIndex].firstAirDate ==
                                            null ||
                                        state.tvshows[itemIndex].firstAirDate!
                                                .length <
                                            5
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
                )),
    );
  }
}
