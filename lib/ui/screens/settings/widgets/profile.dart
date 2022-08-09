import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class Profile extends StatelessWidget {
  final String name;
  final String imageurl;
  const Profile({Key? key, required this.name, required this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(imageurl),
            radius: MediaQuery.of(context).size.width * 0.2,
          ),
        )),
        Text(
          name,
          style: const TextStyle(
              color: white,
              fontSize: 20.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(
        color: darkGrey,
      ),
    );
  }
}
