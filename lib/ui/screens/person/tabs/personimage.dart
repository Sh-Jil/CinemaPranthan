// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/persondetail/person_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/colours/colours.dart';

class PersonImage extends StatelessWidget {
  final String personid;
  const PersonImage({Key? key, required this.personid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PersonImageBloc>(context)
          .add(PersonDetailEvent.getimages(personid: personid));
    });
    return BlocBuilder<PersonImageBloc, PersonImageState>(
      builder: (context, state) {
        return state.isLoading
            ? Center(
                child: CircularProgressIndicator(
                color: orange,
              ))
            : GridView.builder(
                shrinkWrap: true,
                itemCount: state.personimage.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2.0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.677),
                itemBuilder: ((context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: CachedNetworkImage(
                        placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                                color: orange,
                              ),
                            ),
                        imageUrl:
                            "$largeprofilepic${state.personimage[index].filePath}"),
                  );
                }));
      },
    );
  }
}
