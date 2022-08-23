import 'package:cinemapranthan/constants/Icons/appicons.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/constants/links/links.dart';

import 'package:cinemapranthan/ui/screens/settings/widgets/helplisttile.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/logo.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/ratingbuilder.dart';

class HelpFeed extends StatelessWidget {
  const HelpFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColour,
      appBar: AppBar(
          title: const Text(
            "Help & Feedback",
            style: TextStyle(color: white, letterSpacing: 1.0),
          ),
          backgroundColor: darkColour,
          leading: IconButton(
              onPressed: () => goback(context),
              icon: const Icon(AppIcons.back_arrow))),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HelpListTile(
                  ontap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return RatingScreen();
                        });
                  },
                  buttoncolor: const Color.fromARGB(255, 192, 175, 26),
                  title: "Rate Us",
                  icon: Icons.star),
              const SizedBox(height: 25),
              HelpListTile(
                  ontap: () async {
                    if (await canLaunchUrl(appLInks['facebook']!)) {
                      await launchUrl(appLInks['facebook']!,
                          mode: LaunchMode.externalNonBrowserApplication);
                    }
                  },
                  buttoncolor: Colors.blue,
                  title: "Facebook",
                  icon: Icons.facebook),
              const SizedBox(height: 25),
              HelpListTile(
                ontap: (() async {
                  if (await canLaunchUrl(appLInks['instagram']!)) {
                    await launchUrl(appLInks['instagram']!,
                        mode: LaunchMode.externalNonBrowserApplication);
                  }
                }),
                buttoncolor: Colors.redAccent,
                title: "Instagram",
                icon: AppIcons.instagram,
              ),
              const SizedBox(height: 25),
              HelpListTile(
                  ontap: (() async {
                    if (await canLaunchUrl(appLInks['youtube']!)) {
                      await launchUrl(appLInks['youtube']!,
                          mode: LaunchMode.externalNonBrowserApplication);
                    }
                  }),
                  buttoncolor: Colors.red,
                  title: "Youtube",
                  icon: Icons.play_arrow_rounded)
            ],
          )),
    );
  }
}
