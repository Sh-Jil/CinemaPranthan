import 'package:cinemapranthan/backend/apicall/movies.dart';
import 'package:cinemapranthan/bloc/moviecollection/collection_bloc.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';

import 'package:cinemapranthan/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/colllectiontile.dart';

class CollectionScreen extends StatelessWidget {
  final int collectionId;
  const CollectionScreen({Key? key, required this.collectionId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) =>
        BlocProvider.of<CollectionBloc>(context)
            .add(CollectionEvent.getmovieseries(collectionId: collectionId)));
    return Scaffold(
      backgroundColor: darkColour,
      appBar: AppBar(
        title: BlocBuilder<CollectionBloc, CollectionState>(
          builder: (context, state) {
            return Text(state.isLoading ? "" : state.movieseries.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: white,
                    fontSize: 18.0,
                    letterSpacing: 1.5),
                textAlign: TextAlign.start);
          },
        ),
        backgroundColor: darkColour,
        leading: IconButton(
            onPressed: () => goback(context),
            icon: const Icon(Icons.close_rounded)),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: BlocBuilder<CollectionBloc, CollectionState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                    color: orange,
                  ))
                : Column(
                    children: [
                      if (state.movieseries.overview.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 30),
                          child: Text(state.movieseries.overview,
                              style: const TextStyle(
                                  height: 1.5,
                                  color: grey,
                                  fontSize: 16.0,
                                  letterSpacing: 1.0),
                              textAlign: TextAlign.start),
                        ),
                      GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.movieseries.parts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.5,
                            mainAxisSpacing: 8.0,
                            crossAxisCount: 3,
                          ),
                          itemBuilder: ((context, index) {
                            final head = state.movieseries.parts;
                            return CollectionTile(
                                imageurl: head[index].posterPath != null &&
                                        head[index].posterPath!.isNotEmpty
                                    ? "$posterhead${head[index].posterPath}"
                                    : "",
                                rating: head[index].rating.toStringAsFixed(1),
                                title: head[index].title,
                                id: head[index].id);
                          })),
                    ],
                  );
          },
        ),
      )),
    );
  }
}
