import 'package:cached_network_image/cached_network_image.dart';

import 'package:cinemapranthan/ui/screens/person/person.dart';
import 'package:cinemapranthan/utils/navigation.dart';

import 'package:flutter/material.dart';
import '../../../../constants/colours/colours.dart';

class Listtiles extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subtitle;
  final String personid;

  const Listtiles(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.personid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goto(
          context,
          Person(
            personid: personid,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
            /* height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.65, */
            child: Card(
          color: darkColour,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: imageurl.isEmpty
                      ? Image.asset(
                          "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png",
                          filterQuality: FilterQuality.low,
                          fit: BoxFit.cover,
                          cacheWidth: 216,
                          cacheHeight: 123,
                        )
                      : CachedNetworkImage(imageUrl: imageurl),
                ),
              )
              /* CircleAvatar(
                backgroundColor: darkColour,
                radius: 60,
                backgroundImage: imageurl.isEmpty
                    ? const AssetImage("assets/images/grey.png")
                    : CachedNetworkImageProvider(imageurl) as ImageProvider,
              ), */
              ,
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        maxLines: 1,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1.0,
                          color: white,
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                      /*  width: MediaQuery.of(context).size.width * 0.45, */
                      child: Text(
                        subtitle,
                        maxLines: 1,
                        style: const TextStyle(
                          overflow: TextOverflow.visible,
                          color: grey,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
