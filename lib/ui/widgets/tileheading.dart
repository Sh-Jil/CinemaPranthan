import 'package:flutter/material.dart';
import '../../constants/colours/colours.dart';

class TileHeading extends StatelessWidget {
  final String heading;
  const TileHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 24.0, bottom: 16.0, left: 16.0, right: 16.0),
      child: Text(
        heading,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 18.0,
          letterSpacing: 1.0,
          color: white,
        ),
      ),
    );
  }
}
