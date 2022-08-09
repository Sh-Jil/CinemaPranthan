import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

import '../../../../constants/languages.dart';

import 'moviename.dart';

class MovieTitleCard extends StatelessWidget {
  final String heading;

  final List<dynamic> genre;
  final String rating;
  final String year;
  final String runtime;
  final String language;

  const MovieTitleCard(
      {Key? key,
      required this.heading,
      required this.genre,
      required this.rating,
      required this.year,
      required this.runtime,
      required this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final genres = [];
    for (var element in genre) {
      genres.add(element['name']);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: darkGrey.withOpacity(0.5),

            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ), // BorderRadius
          ), // BoxDecoration
          child: Container(
            margin: const EdgeInsetsDirectional.only(bottom: 1),
            decoration: const BoxDecoration(
              color: darkColour,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: MovieName(moviename: heading),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "⭐ $rating",
                        style: const TextStyle(
                            color: grey, fontSize: 16.0, letterSpacing: 1.5),
                      ),
                      Text(
                        "📆 $year",
                        style: const TextStyle(
                            color: grey, fontSize: 16.0, letterSpacing: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "📖 ${languages[language]}",
                        style: const TextStyle(
                            color: grey, fontSize: 16.0, letterSpacing: 1.5),
                      ),
                      Text(
                        "⏰ $runtime",
                        style: const TextStyle(
                            color: grey, fontSize: 16.0, letterSpacing: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    genres
                        .toString()
                        .substring(1, genres.toString().length - 1),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: grey, fontSize: 16.0, letterSpacing: 1.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
