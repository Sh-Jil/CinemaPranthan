import 'package:cinemapranthan/ui/widgets/textsize.dart';
import 'package:flutter/material.dart';
import 'package:marquee_text/marquee_text.dart';

import '../../../../constants/colours/colours.dart';

class MovieName extends StatelessWidget {
  final String moviename;
  const MovieName({Key? key, required this.moviename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textlength(moviename, context) >
            MediaQuery.of(context).size.width * 0.885
        ? MarqueeText(
            textAlign: TextAlign.center,
            speed: 30,
            alwaysScroll: true,
            text: TextSpan(text: moviename),
            style: const TextStyle(
                letterSpacing: 1.2,
                color: white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          )
        : Text(
            moviename,
            textAlign: TextAlign.center,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(
                color: white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2),
          );
  }
}
