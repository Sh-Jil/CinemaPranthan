
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../constants/colours/colours.dart';

import 'package:cinemapranthan/ui/screens/search/searchscreen.dart';
import '../../constants/Icons/appicons.dart';
import '../../constants/colours/colours.dart';

class SearchBar extends StatelessWidget {
  final bool ismovie;
  final String searchtitle;
  const SearchBar({Key? key, required this.searchtitle, required this.ismovie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      color: darkGrey.withOpacity(0.3),
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(
                          Radius.elliptical(15.0, 15.0))),
                  child: TextField(
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.text,
                    readOnly: true,
                    onTap: () => goto(
                        context,
                        SearchScreen(
                          searchtitle: searchtitle,
                          ismovie: ismovie,
                        )),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 16.0,
                            color: lightgrey.withOpacity(0.5),
                            letterSpacing: 1.0),
                        hintText: searchtitle,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: transparent),
                  )),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                minWidth: 20.0,
                height: 50.0,
                color: orange,
                onPressed: () {},
                child: const Icon(
                  AppIcons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
