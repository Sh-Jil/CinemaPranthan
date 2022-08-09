import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/licenses.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/logo.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/privacy_terms.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColour,
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: darkColour,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => goback(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoShow(),
            const Text("©️ 2022 Shijil Raj",
                style:
                    TextStyle(color: grey, fontSize: 17.0, letterSpacing: 1.0)),
            const Text(
                "CinemaPranthan uses the TMDB API but is not endorsed or certified by TMDB.",
                style: TextStyle(
                    height: 1.5,
                    color: grey,
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w400)),
            TextButton(
                onPressed: () => goto(context, const Licenses()),
                child: const Text(
                  "Open Source Licenses",
                  style: TextStyle(
                      color: orange, fontSize: 19.0, letterSpacing: 1.0),
                )),
            const PrivacyTerms()
          ],
        ),
      ),
    );
  }
}
