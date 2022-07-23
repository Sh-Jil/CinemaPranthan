import 'package:flutter/material.dart';
import 'movieslide.dart';

class MovieTileList extends StatelessWidget {
  final String heading;
  final String rating;
  final String imageurl;
  final bool ismovie;
  final int id;
  const MovieTileList(
      {Key? key,
      required this.heading,
      required this.rating,
      required this.imageurl,
      required this.ismovie,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridTile(
          child: MovieSlider(
              imageurl: imageurl,
              heading: heading,
              rating: rating,
              id: id,
              ismovie: ismovie)),
    );
  }
}
