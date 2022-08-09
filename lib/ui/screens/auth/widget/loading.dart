import 'package:flutter/material.dart';

void showDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
  );
}

void hideProgressDialogue(BuildContext context) {
  Navigator.of(context).pop(const CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
  ));
}
