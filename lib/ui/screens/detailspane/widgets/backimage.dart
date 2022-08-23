import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/models/images/posterimages.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colours/colours.dart';

class BackImage extends StatelessWidget {
  final List<PosterModel> imagelist;
  const BackImage({Key? key, required this.imagelist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.7;
    ValueNotifier<int> currentindex = ValueNotifier(0);
    return Container(
      padding: const EdgeInsets.only(bottom: 0.5),
      decoration: const BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
        child: imagelist.isNotEmpty
            ? Stack(
                children: [
                  CarouselSlider.builder(
                      itemCount: imagelist.length,
                      itemBuilder: (context, itemIndex, pageindex) {
                        return Container(
                            decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  '$backdrophead${imagelist[itemIndex].filePath}',
                                  errorListener: () =>
                                      const Icon(Icons.error))),
                        ));
                      },
                      options: CarouselOptions(
                          onPageChanged: ((index, reason) {
                            currentindex.value = index;
                          }),
                          enableInfiniteScroll: false,
                          viewportFraction: 1.0,
                          height: height)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ValueListenableBuilder(
                          valueListenable: currentindex,
                          builder: (context, int index, _) {
                            return SmoothIndicator(
                                count: imagelist.length, currentindex: index);
                          }),
                    ),
                  )
                ],
              )
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: AssetImage(
                          "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")),
                ),
              ),
      ),
    );
  }
}

class SmoothIndicator extends StatelessWidget {
  final int count;
  int currentindex;
  SmoothIndicator({Key? key, required this.count, required this.currentindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentindex,
      count: count,
      effect: ScrollingDotsEffect(
          maxVisibleDots: 9,
          fixedCenter: true,
          dotHeight: 7.0,
          dotColor: darkGrey.withOpacity(0.5),
          activeDotColor: white.withOpacity(0.7)),
    );
  }
}
