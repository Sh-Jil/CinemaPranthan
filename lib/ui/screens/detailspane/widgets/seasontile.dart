import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/ui/screens/detailspane/seasondetails.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';
import '../../../widgets/glasscontainer.dart';

class SeasonTile extends StatelessWidget {
  final String tvid;
  final String seasonno;
  final String heading;
  final String imageurl;
  const SeasonTile(
      {Key? key,
      required this.heading,
      required this.imageurl,
      required this.tvid,
      required this.seasonno})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goto(
          context,
          SeasonDetails(
            tvid: tvid,
            seasonno: seasonno,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.5,
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
                            heading,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: white,
                                fontSize: 18.0,
                                letterSpacing: 1.0),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
