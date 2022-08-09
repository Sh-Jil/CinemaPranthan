import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProfileTile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                  color: white, fontSize: 18, letterSpacing: 1.0)),
          Flexible(
            child: Text(subtitle,
                style: const TextStyle(
                    overflow: TextOverflow.fade,
                    color: grey,
                    fontSize: 16,
                    letterSpacing: 1.0)),
          )
        ],
      ),
    );
  }
}
