import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:flutter/material.dart';

class Licenses extends StatelessWidget {
  const Licenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          useMaterial3: true,
          primaryColor: darkColour,
          colorScheme: const ColorScheme.dark(
              primary: darkColour, secondary: darkColour)),
      child: LicensePage(
        applicationName: "CinemaPranthan",
        applicationIcon: Image.asset("assets/images/web_hi_res_512.png"),
      ),
    );
  }
}
