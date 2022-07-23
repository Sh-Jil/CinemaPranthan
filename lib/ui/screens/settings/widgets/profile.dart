import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.2,
          ),
        )),
        const Text(
          "Person Name",
          style: TextStyle(
              color: white,
              fontSize: 20.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
