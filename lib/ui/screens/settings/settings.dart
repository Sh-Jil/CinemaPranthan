import 'package:cinemapranthan/ui/screens/settings/widgets/profile.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/setting_heading.dart';
import 'package:flutter/material.dart';

import '../../../constants/colours/colours.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Profile(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Divider(
                thickness: 0.1,
                color: darkGrey,
              )),
          SettingHead(icon: Icons.person, title: "Profile Settings"),
          SettingHead(icon: Icons.security, title: "Security & Password")
        ],
      ),
    );
  }
}
