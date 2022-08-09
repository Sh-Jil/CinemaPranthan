import 'package:cinemapranthan/ui/screens/settings/screens/aboutscreen.dart';
import 'package:cinemapranthan/ui/screens/settings/screens/helpfeed.dart';
import 'package:cinemapranthan/ui/screens/settings/screens/profilesetting.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/clearcache.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/profile.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/setting_heading.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../constants/colours/colours.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: ListView(
        children: [
          Profile(name: user!.displayName!, imageurl: user.photoURL!),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Divider(
                thickness: 0.1,
                color: darkGrey,
              )),
          SettingHead(
              icon: Icons.person,
              title: "Profile",
              ontap: () => goto(context, const ProfileSetting())),
          SettingHead(
            icon: Icons.security,
            title: "Clear Cache",
            ontap: () {
              clearcache();
              setState(() {});
            },
            subtitle:
                "${(imageCache.currentSizeBytes / 1048576).toStringAsFixed(1)} Mb",
          ),
          SettingHead(
            icon: Icons.help,
            title: "Help & Feedback",
            ontap: () => goto(context, const HelpFeed()),
          ),
          SettingHead(icon: Icons.info, title: "About",ontap: ()=> goto(context, const AboutScreen()),)
        ],
      ),
    );
  }
}
