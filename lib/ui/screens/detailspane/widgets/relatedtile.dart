import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';
import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';
import '../../../widgets/glasscontainer.dart';

class RelatedTile extends StatelessWidget {
  final String imageurl;
  final String rating;
  final String title;
  final bool ismovie;
  final int id;
  const RelatedTile(
      {Key? key,
      required this.imageurl,
      required this.rating,
      required this.title,
      required this.ismovie,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ismovie
            ? goto(context, Details(id: id))
            : goto(context, TvDetails(id: id));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: imageurl.isEmpty
                                    ? BoxFit.scaleDown
                                    : BoxFit.cover,
                                image: imageurl.isEmpty
                                    ? const AssetImage(
                                        "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")
                                    : CachedNetworkImageProvider(imageurl)
                                        as ImageProvider)),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: GlassContainer(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0)),
                              blurPower: 10.0,
                              padding: const EdgeInsets.all(8.0),
                              gradientColors: [
                                white.withOpacity(0.1),
                                white.withOpacity(0.2)
                              ],
                              child: Text(
                                "⭐ $rating",
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: white,
                                    fontSize: 18.0,
                                    letterSpacing: 1.0),
                              )))
                    ],
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.fade,
                        color: white,
                        fontSize: 18.0,
                        letterSpacing: 1.25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
