// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';
import 'package:cinemapranthan/ui/screens/favourites/favourite_list.dart';
import 'package:cinemapranthan/ui/screens/favourites/widgets/backpic.dart';
import 'package:flutter/material.dart';
import 'widgets/movietile.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<String> backimgindex = ValueNotifier(favimageb[0]);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return ValueListenableBuilder(
        valueListenable: backimgindex,
        builder: (context, String index, _) {
          return Stack(
            children: [
              SizedBox.expand(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    darkColour,
                    darkColour.withOpacity(0.5),
                    darkGrey.withOpacity(0.2)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
              ),
              BackPic(
                imageurl: backimgindex.value,
              ),
              Positioned(
                bottom: 0,
                height: height * 0.725,
                width: width,
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          backimgindex.value = favimageb[index];
                          backimgindex.notifyListeners();
                        },
                        height: height * 1.6,
                        aspectRatio: 16 / 9,
                        enlargeCenterPage: true,
                        viewportFraction: 0.75),
                    itemCount: favimagep.length,
                    itemBuilder:
                        (BuildContext context, int itemindex, int pageindex) {
                      return GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Details(
                                      id: 0,
                                    ))),
                        child: MovieTile(
                          heading: "any",
                          imageurl: favimagep[itemindex],
                        ),
                      );
                    }),
              )
            ],
          );
        });
  }
}
