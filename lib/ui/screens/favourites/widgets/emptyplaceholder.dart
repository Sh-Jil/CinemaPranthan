import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class FavPlaceholder extends StatelessWidget {
  const FavPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText("Add Your Favourites to be shown here.",
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
              textStyle: const TextStyle(
                height: 1.5,
                fontSize: 20.0,
                color: grey,
                letterSpacing: 1.5,
                fontStyle: FontStyle.normal,
              ),
              colors: [grey, darkGrey, white])
        ],
        pause: const Duration(milliseconds: 100),
      ),
    );
  }
}
