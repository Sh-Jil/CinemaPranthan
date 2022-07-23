// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/listtile.dart';

import 'package:flutter/material.dart';

class StarCast extends StatelessWidget {
  List<dynamic> liste;
  StarCast({
    Key? key,
    required this.liste,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Listtiles(
                  imageurl: liste[index].profilePath == null
                      ? ""
                      : "$backdrophead${liste[index].profilePath}",
                  title: liste[index].name,
                  subtitle: liste[index].character ?? "_");
            }),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: liste.length),
      ),
    );
  }
}
