// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:carousel_slider/carousel_slider.dart';

import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/details.dart';
import 'package:cinemapranthan/ui/screens/favourites/widgets/backpic.dart';
import 'package:flutter/material.dart';

import 'package:cinemapranthan/bloc/favourites/favourite_bloc.dart';
import 'package:cinemapranthan/ui/screens/detailspane/tvdetails.dart';
import 'package:cinemapranthan/ui/screens/favourites/widgets/emptyplaceholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../backend/apicall/movies.dart';

import 'widgets/movietile.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavouriteBloc>(context)
          .add(const FavouriteEvent.getfavourites());
    });
    CarouselController controller = CarouselController();

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return BlocBuilder<FavouriteBloc, FavouriteState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                color: orange,
              ))
            : state.favlist.isEmpty
                ? const Center(child: FavPlaceholder())
                : Stack(
                    children: [
                      SizedBox.expand(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                darkColour,
                                darkColour.withOpacity(0.5),
                                darkGrey.withOpacity(0.2)
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      CarouselSlider.builder(
                          carouselController: controller,
                          itemCount: state.favlist.length,
                          options: CarouselOptions(
                              scrollPhysics:
                                  const NeverScrollableScrollPhysics(),
                              enableInfiniteScroll: false,
                              height: MediaQuery.of(context).size.height * 0.4,
                              pageSnapping: false,
                              viewportFraction: 1.0),
                          itemBuilder: (context, int itemindex, int pageindex) {
                            return BackPic(
                                imageurl: state.favlist[itemindex].backposter !=
                                        null
                                    ? "$backdrophead${state.favlist[itemindex].backposter}"
                                    : "");
                          }),
                      Positioned(
                        bottom: 0,
                        height: height * 0.725,
                        width: width,
                        child: state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                color: orange,
                              ))
                            : state.favlist.isNotEmpty
                                ? CarouselSlider.builder(
                                    options: CarouselOptions(
                                        onPageChanged: (index, reason) {
                                          controller.jumpToPage(index);
                                        },
                                        enableInfiniteScroll: false,
                                        height: height * 1.6,
                                        aspectRatio: 16 / 9,
                                        enlargeCenterPage: true,
                                        viewportFraction: 0.75),
                                    itemCount: state.favlist.length,
                                    itemBuilder: (BuildContext context,
                                        int itemindex, int pageindex) {
                                      final head = state.favlist;
                                      return InkWell(
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    head[itemindex].ismovie
                                                        ? Details(
                                                            id: head[itemindex]
                                                                .id)
                                                        : TvDetails(
                                                            id: head[itemindex]
                                                                .id))),
                                        child: MovieTile(
                                          rating: head[itemindex].rating ?? "",
                                          runtime:
                                              head[itemindex].runtime ?? "",
                                          heading: head[itemindex].title ?? "",
                                          imageurl: head[itemindex].poster !=
                                                  null
                                              ? "$posterhead${head[itemindex].poster}"
                                              : "",
                                        ),
                                      );
                                    })
                                : const FavPlaceholder(),
                      )
                    ],
                  );
      },
    );
  }
}
