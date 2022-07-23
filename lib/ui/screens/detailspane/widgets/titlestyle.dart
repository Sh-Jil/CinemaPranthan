import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

class TitleStyle extends StatelessWidget {
  final String title;
  const TitleStyle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: const TextStyle(
            color: white,
            fontSize: 19.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
