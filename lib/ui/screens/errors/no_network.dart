import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConnectivityErrorScreen extends StatelessWidget {
  const ConnectivityErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColour,
      body: Column(
        children: [
          Expanded(
            child: Lottie.asset("assets/gif/45724-planet-laoder.json"),
          ),
          const Center(
              child: Text(
            "Oops !",
            style: TextStyle(
                color: white,
                fontSize: 23.0,
                letterSpacing: 2.0,
                height: 4.0,
                fontWeight: FontWeight.bold),
          )),
          const Center(
              child: Text("It looks like you've lost connection",
                  style: TextStyle(
                      color: grey,
                      fontSize: 18.0,
                      height: 2.0,
                      letterSpacing: 1.5))),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          )
        ],
      ),
    );
  }
}
