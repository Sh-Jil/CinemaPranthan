import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/backend/models/images/posterimages.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colours/colours.dart';

class BackImage extends StatelessWidget {
  final List<PosterModel> imagelist;
  const BackImage({Key? key, required this.imagelist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    ValueNotifier<int> currentindex = ValueNotifier(0);
    return Container(
      width: width < 1081 ? width : 1080,
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
                fit: StackFit.expand,
                children: [
                  CarouselSlider.builder(
                      itemCount: imagelist.length,
                      itemBuilder: (context, itemIndex, pageindex) {
                        return CachedNetworkImage(
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          imageUrl:
                              '$backdrophead${imagelist[itemIndex].filePath}',
                          placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                            color: white.withOpacity(0.1),
                          )),
                        );
                      },
                      options: CarouselOptions(
                          onPageChanged: ((index, reason) {
                            currentindex.value = index;
                          }),
                          enableInfiniteScroll: false,
                          viewportFraction: 1.0,
                          height: height < 2401 ? height * 0.7 : 2400 * 0.7)),
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
