import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';




import '../../../../constants/colours/colours.dart';

class BackImage extends StatelessWidget {
  final String imageurl;

  const BackImage({Key? key, required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.7;
    return Container(
      decoration: const BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: Container(
        margin: const EdgeInsetsDirectional.only(bottom: 2),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: imageurl.isEmpty ? BoxFit.scaleDown : BoxFit.cover,
              image: imageurl.isEmpty
                  ? const AssetImage(
                      "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")
                  : CachedNetworkImageProvider(imageurl,
                          errorListener: () => const Icon(Icons.error))
                      as ImageProvider),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
        ),
      ),

  
    );
  }
}
