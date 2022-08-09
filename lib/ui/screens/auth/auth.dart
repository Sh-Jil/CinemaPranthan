import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'widget/googlebutton.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColour,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Lottie.asset("assets/gif/45734-cinema-news-animation.json"),
          ),
          const Center(child: GoogleSigninButton())
        ],
      ),
    );
  }
}
