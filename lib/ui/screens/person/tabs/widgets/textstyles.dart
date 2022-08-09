import 'package:flutter/material.dart';

import '../../../../../constants/colours/colours.dart';

class TitleContent extends StatelessWidget {
  final String content;
  final double height;
  const TitleContent({Key? key, required this.content, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: grey, fontSize: 16.0, letterSpacing: 1.0, height: height),
    );
  }
}

class HeadingInfo extends StatelessWidget {
  final String heading;
  const HeadingInfo({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        height: 2.0,
        color: white,
        letterSpacing: 1.5,
        fontSize: 18,
      ),
    );
  }
}
