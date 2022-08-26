import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';

import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';

import '../../../constants/colours/colours.dart';
import 'glasscontainer.dart';

class MoviePosterTile extends StatelessWidget {
  final String moviename;
  final String rating;
  final int index;
  final String backimage;
  final int id;
  final bool ismovie;

  const MoviePosterTile(
      {super.key,
      required this.moviename,
      required this.rating,
      required this.index,
      required this.backimage,
      required this.id,
      required this.ismovie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: orange,
      onTap: () => ismovie
          ? goto(
              context,
              Details(
                id: id,
              ))
          : goto(
              context,
              TvDetails(
                id: id,
              )),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  white,
                  transparent,
                  transparent,
                  transparent,
                  darkGrey,
                  Colors.black
                ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: const Offset(1, 1), // changes position of shadow
                  ),
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset.fromDirection(
                        3.14, 5.0), // changes position of shadow
                  )
                ],
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                image: DecorationImage(
                    fit: backimage.isNotEmpty ? BoxFit.cover : BoxFit.scaleDown,
                    image: backimage.isNotEmpty
                        ? CachedNetworkImageProvider(backimage) as ImageProvider
                        : const AssetImage(
                            "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png"))),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: GlassContainer(
              borderRadius: BorderRadius.circular(15.0),
              blurPower: 25.0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
              gradientColors: [
                white.withOpacity(0.1),
                Colors.white10.withOpacity(0.1)
              ],
              child: Text("${index + 1}/8",
                  style: const TextStyle(
                      color: white, fontSize: 13.0, letterSpacing: 1.0)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2), //New
                    blurRadius: 25.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0, -1)),
                BoxShadow(
                    color: Colors.black.withOpacity(0.3), //New
                    blurRadius: 25.0,
                    spreadRadius: 10.0,
                    offset: const Offset(0, 0)),
                BoxShadow(
                    color: Colors.black.withOpacity(0.4), //New
                    blurRadius: 25.0,
                    spreadRadius: 10.0,
                    offset: const Offset(0, 1))
              ]),
              padding:
                  const EdgeInsets.only(bottom: 16.0, left: 20.0, right: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              moviename,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: const TextStyle(
                                  color: white,
                                  fontSize: 20.0,
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
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                rating,
                                style: const TextStyle(
                                    color: white,
                                    fontSize: 14.0,
                                    letterSpacing: 1.5),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
