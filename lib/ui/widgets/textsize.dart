import 'package:flutter/material.dart';

double textlength(text, context) {
  final Size length = (TextPainter(
          text:
              TextSpan(text: text, style: const TextStyle(letterSpacing: 1.2)),
          maxLines: 1,
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
          textDirection: TextDirection.ltr)
        ..layout())
      .size;

  return length.width;
}
