import 'package:cached_network_image/cached_network_image.dart';

import 'package:cinemapranthan/constants/colours/colours.dart';

import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final String heading;
  final String imageurl;
  final String rating;
  final String runtime;
  const MovieTile(
      {Key? key,
      required this.heading,
      required this.imageurl,
      required this.rating,
      required this.runtime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double imgwidth = MediaQuery.of(context).size.width * 0.6;
    return SingleChildScrollView(
      child: Container(
        height: height * 0.6,
        width: imgwidth + 30,
        decoration: BoxDecoration(
          border: Border.all(color: grey.withOpacity(0.5)),
          color: darkColour.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: height * 0.4,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: imageurl,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
            
                /* Positioned(

                  bottom: 25.0,
                  right: 25.0,
                  child: LikeButton(
                    animationDuration: const Duration(milliseconds: 700),
                    likeBuilder: ((isLiked) => Icon(
                          AppIcons.heart,
                          size: 30.0,
                          color: isLiked ? orange : darkGrey,
                        )),
                    isLiked: true,
                  ),

                )

                ) */
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: imgwidth * 0.9,
                child: Text(heading,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                        letterSpacing: 1.5,
                        color: white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (rating.isNotEmpty)
                    Text(
                      "⭐ $rating",
                      style: const TextStyle(
                          color: darkGrey, fontSize: 15.0, letterSpacing: 1.5),
                    ),
                  if (runtime.isNotEmpty)
                    Text(
                      "🕓 $runtime",
                      style: const TextStyle(
                          color: darkGrey, fontSize: 15.0, letterSpacing: 1.5),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
