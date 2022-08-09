import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';


import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';

import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import '../../../constants/colours/colours.dart';
import 'glasscontainer.dart';

class MovieSlider extends StatelessWidget {
  final String imageurl;
  final String heading;
  final String rating;
  final int id;
  final bool ismovie;
  const MovieSlider(
      {Key? key,
      required this.imageurl,
      required this.heading,
      required this.rating,
      required this.id,
      required this.ismovie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: orange,

     
      onTap: () => ismovie
          ? goto(context, Details(id: id))
          : goto(context, TvDetails(id: id)),

      child: GridTile(
          child: Stack(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(


                    fit: imageurl.isNotEmpty ? BoxFit.cover : BoxFit.scaleDown,
                    image: imageurl.isNotEmpty
                        ? CachedNetworkImageProvider(imageurl) as ImageProvider
                        : const AssetImage(
                            "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png"))),

          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GlassContainer(
                  padding:
                      const EdgeInsets.only(left: 12.0, bottom: 6.0, top: 4.0),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  blurPower: 7.5,
                  gradientColors: [
                    white.withOpacity(0.1),
                    Colors.white12.withOpacity(0.1),
                    Colors.white24.withOpacity(0.1)
                  ],
                  child: Column(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        heading,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: const TextStyle(
                            color: white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "⭐",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          rating,
                          style: const TextStyle(
                              color: white, fontSize: 14.0, letterSpacing: 1.5),
                        ),
                      ],
                    )
                  ])))
        ],
      )),
    );
  }
}
