import 'package:cinemapranthan/constants/links/links.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/colours/colours.dart';

class PrivacyTerms extends StatelessWidget {
  const PrivacyTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () async {
              if (await canLaunchUrl(appLInks['privacy']!)) {
                await launchUrl(appLInks['privacy']!,
                    mode: LaunchMode.externalApplication);
              }
            },
            child: const Text("Privacy Policy",
                style: TextStyle(
                    color: grey, fontSize: 16.0, letterSpacing: 1.0))),
        TextButton(
            onPressed: () async {
              if (await canLaunchUrl(appLInks['terms']!)) {
                await launchUrl(appLInks['terms']!,
                    mode: LaunchMode.externalApplication);
              }
            },
            child: const Text(
              "Terms Of Use",
              style: TextStyle(color: grey, fontSize: 16.0, letterSpacing: 1.0),
            ))
      ],
    );
  }
}
