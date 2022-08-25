import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';
import '../../../../utils/navigation.dart';
import '../../../widgets/glasscontainer.dart';
import '../details.dart';

class CollectionTile extends StatelessWidget {
  final String imageurl;
  final String rating;
  final String title;
  final int id;
  const CollectionTile(
      {Key? key,
      required this.imageurl,
      required this.rating,
      required this.title,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        goto(context, Details(id: id));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Wrap(
          children: [
            SizedBox(
              width: width < 1081 ? width * 0.33 : 1080 * 0.33,
              height: height < 2400 ? height * 0.4 : 2400 * 0.4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height < 2400 ? height * 0.2 : 2400 * 0.2,
                        width: width < 1081 ? width * 0.33 : 1080 * 0.33,
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
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                    fontSize: 12.0,
                                    letterSpacing: 1.0),
                              )))
                    ],
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.fade,
                        color: white,
                        fontSize: 17.0,
                        letterSpacing: 1),
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
