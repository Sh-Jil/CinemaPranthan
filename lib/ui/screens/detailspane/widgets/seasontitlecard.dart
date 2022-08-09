import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';
import 'moviename.dart';

class SeasonTitleCard extends StatelessWidget {
  final String heading;
  final String date;
  final String runtime;
  const SeasonTitleCard(
      {Key? key,
      required this.heading,
      required this.date,
      required this.runtime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "📆 $date",
                      style: const TextStyle(
                          color: grey, fontSize: 16.0, letterSpacing: 1.5),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "⌛ $runtime",
                      style: const TextStyle(
                          color: grey, fontSize: 16.0, letterSpacing: 1.5),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
