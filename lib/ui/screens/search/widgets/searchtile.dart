import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';
import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class SearchTile extends StatelessWidget {
  final String heading;
  final String rating;
  final String? image;
  final String? year;
  final int id;
  final String overview;
  final bool ismovie;
  const SearchTile(
      {Key? key,
      required this.heading,
      required this.rating,
      required this.image,
      required this.year,
      required this.id,
      required this.overview,
      required this.ismovie})
      : super(key: key);

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
          : goto(context, TvDetails(id: id)),
      child: Container(
        decoration: BoxDecoration(
            color: grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15.0)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          margin: const EdgeInsets.all(0.75),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              color: darkColour, borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                  child: image != null
                      ? CachedNetworkImage(imageUrl: image!)
                      : Image.asset(
                          'assets/images/f0fc1ca20e08d638195b9-removebg-preview.png',
                          cacheHeight: 30,
                          cacheWidth: 50,
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Text(
                        heading,
                        maxLines: 4,
                        style: const TextStyle(
                            overflow: TextOverflow.fade,
                            letterSpacing: 1.0,
                            color: white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
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
                              color: white, fontSize: 14.0, letterSpacing: 1.5),
                        ),
                        const Text(
                          "  ⦿ ",
                          style: TextStyle(
                              color: grey, fontSize: 14.0, letterSpacing: 1.5),
                        ),
                        Text(
                          year!,
                          style: const TextStyle(
                              color: white, fontSize: 14.0, letterSpacing: 1.5),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
