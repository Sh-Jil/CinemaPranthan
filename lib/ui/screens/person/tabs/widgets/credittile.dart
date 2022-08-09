
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/models/personcredits/personcredits.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';
import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';
import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/colours/colours.dart';

class CreditTile extends StatelessWidget {
  final int id;
  final MediaType media;
  final String imageurl;
  final String title;
  final String subtitle;
  const CreditTile(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.media,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        media.name.toLowerCase() == "movie"
            ? goto(context, Details(id: id))
            : goto(context, TvDetails(id: id));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        fit: imageurl.isEmpty ? BoxFit.scaleDown : BoxFit.cover,
                        image: imageurl.isEmpty
                            ? const AssetImage(
                                "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")
                            : CachedNetworkImageProvider("$posterhead$imageurl")
                                as ImageProvider)),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.fade,
                    color: white,
                    fontSize: 20.0,
                    letterSpacing: 1.25),
              ),
              Text(subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                      height: 1.5,
                      color: grey,
                      fontSize: 16.0,
                      letterSpacing: 1.0))
            ],
          ),
        ),
      ),
    );
  }
}
