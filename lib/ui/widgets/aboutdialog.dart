import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../constants/colours/colours.dart';

void about(context) {
  const colorizeColors = [
    orange,
    Colors.yellow,
    Colors.red,
  ];

  const colorizeTextStyle = TextStyle(
    fontSize: 22.0,
    fontFamily: 'Panodra',
  );
  return showAboutDialog(context: context, children: [
    Center(
      child: SizedBox(
        width: 160,
        height: 160,
        child: Image.asset(
            "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png"),
      ),
    ),
    Center(
      child: SizedBox(
        width: 230,
        child: AnimatedTextKit(
            repeatForever: true,
            isRepeatingAnimation: true,
            animatedTexts: [
              ColorizeAnimatedText(
                'സിനിമാപ്രാന്തൻമാർ',
                textAlign: TextAlign.justify,
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              )
            ]),
      ),
    )
  ]);
}
