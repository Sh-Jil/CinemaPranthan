import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class LogoShow extends StatelessWidget {
  const LogoShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
                    textStyle: const TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 22.0,
                    ),
                    colors: [
                      orange,
                      Colors.yellow,
                      Colors.red,
                    ],
                  )
                ]),
          ),
        )
      ],
    );
  }
}
