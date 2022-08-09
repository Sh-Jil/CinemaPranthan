import 'package:cinemapranthan/bloc/searchmovie/search_movie_bloc.dart';
import 'package:cinemapranthan/bloc/searchtv/searchtv_bloc.dart';
import 'package:cinemapranthan/ui/screens/search/widgets/movielist.dart';
import 'package:cinemapranthan/ui/screens/search/widgets/tvshowlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../backend/utils/debounce.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';
import '../../../utils/navigation.dart';

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
  final _debouncer = Debouncer();
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
                                      page: 1, moviequery: value))
                              : BlocProvider.of<SearchtvBloc>(context).add(
                                  SearchTvEvent.searchtv(
                                      tvquery: value, page: 1));
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
              ? SearchMovieList(text: text)
              : SearchTvList(text: text)),
    );
  }
}
