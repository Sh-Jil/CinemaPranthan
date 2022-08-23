import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

class EpisodeTile extends StatelessWidget {
  final String imageurl;
  final String overview;
  final String runtime;
  final int episodeno;
  final String heading;
  final String rating;
  final String date;
  const EpisodeTile(
      {Key? key,
      required this.imageurl,
      required this.overview,
      required this.runtime,
      required this.episodeno,
      required this.heading,
      required this.rating,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: darkColour.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: grey)),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: imageurl.isNotEmpty
                    ? CachedNetworkImage(fit: BoxFit.cover, imageUrl: imageurl)
                    : Image.asset(
                        "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png",
                        fit: BoxFit.scaleDown,
                      ),
              ),
              ExpansionTile(
                childrenPadding: const EdgeInsets.all(12.0).copyWith(top: 0),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                collapsedIconColor: darkGrey.withOpacity(0.5),
                iconColor: darkGrey.withOpacity(0.5),
                title: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Text(
                        heading,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: const TextStyle(
                            color: white, fontSize: 18.0, letterSpacing: 1.0),
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  "⭐ $rating",
                  style: const TextStyle(
                      color: grey, fontSize: 15.0, letterSpacing: 1.5),
                ),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("📆 $date",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: grey, fontSize: 16.0, letterSpacing: 1.5)),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "⏰ $runtime",
                        style: const TextStyle(
                            color: grey, fontSize: 16.0, letterSpacing: 1.5),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(overview,
                      style: const TextStyle(
                          color: grey, fontSize: 16.0, letterSpacing: 1.0),
                      textAlign: TextAlign.start)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
