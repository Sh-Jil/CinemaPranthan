import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/profile.dart';
import 'package:cinemapranthan/ui/screens/settings/widgets/profiletile.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../constants/Icons/appicons.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
        backgroundColor: darkColour,
        appBar: AppBar(
          backgroundColor: darkColour,
          title: const Text(
            "Profile",
            style: TextStyle(
              color: white,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () => goback(context),
              icon: const Icon(AppIcons.back_arrow)),
        ),
        body: Column(children: [
          const SizedBox(
            height: 50,
          ),
          ProfileTile(title: "Display Name", subtitle: user!.displayName ?? ""),
          const Line(),
          ProfileTile(title: "Email", subtitle: user.email ?? ""),
          const Line(),
          ProfileTile(title: "Mobile Number", subtitle: user.phoneNumber ?? ""),
        ]));
  }
}
