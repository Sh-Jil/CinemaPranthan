import 'package:flutter/material.dart';

void goto(context, routepage) => Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => routepage));

void goback(context) => Navigator.of(context).pop();
