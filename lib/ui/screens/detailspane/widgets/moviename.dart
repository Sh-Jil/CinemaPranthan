import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

class MovieName extends StatelessWidget {
  final String moviename;
  const MovieName({Key? key, required this.moviename}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      moviename,
      textAlign: TextAlign.center,
      softWrap: true,
      style: const TextStyle(
          color: white,
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2),
    );
  }
}
