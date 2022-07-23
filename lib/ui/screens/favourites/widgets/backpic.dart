import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

class BackPic extends StatelessWidget {
  final String imageurl;
  const BackPic({Key? key, required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.4;
    return Stack(
      children: [
        SizedBox(
          height: height,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: imageurl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: height * 0.25,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.1),
                  transparent,
                  transparent,
                  transparent
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.7), //New
                      blurRadius: 25.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0, -2)),
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3), //New
                      blurRadius: 25.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0, -1)),
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2), //New
                      blurRadius: 25.0,
                      spreadRadius: 10.0,
                      offset: const Offset(0, 0)),
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1), //New
                      blurRadius: 25.0,
                      spreadRadius: 10.0,
                      offset: const Offset(0, 1))
                ],
              ),
            ))
      ],
    );
  }
}
