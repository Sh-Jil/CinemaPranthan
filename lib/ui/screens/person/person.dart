// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemapranthan/bloc/persondetail/person_detail_bloc.dart';
import 'package:cinemapranthan/constants/colours/colours.dart';
import 'package:cinemapranthan/ui/screens/detailspane/widgets/moviename.dart';
import 'package:cinemapranthan/ui/screens/person/tabs/info.dart';
import 'package:cinemapranthan/ui/screens/person/tabs/personimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../backend/apicall/movies.dart';
import '../../../constants/Icons/appicons.dart';
import '../../../utils/navigation.dart';

class Person extends StatelessWidget {
  final String personid;
  const Person({Key? key, required this.personid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        BlocProvider.of<PersonDetailBloc>(context)
            .add(PersonDetailEvent.getdetails(personid: personid)));
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: darkColour,
        body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: ((context, innerBoxIsScrolled) {
                double top = 0.0;
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    leading: IconButton(
                        onPressed: (() => goback(context)),
                        icon: const Icon(
                          AppIcons.back_arrow,
                          color: white,
                        )),
                    collapsedHeight: kToolbarHeight,
                    expandedHeight: MediaQuery.of(context).size.height * 0.6,
                    elevation: 10.0,
                    stretch: true,
                    backgroundColor: darkColour.withOpacity(0.95),
                    pinned: true,
                    flexibleSpace:
                        LayoutBuilder(builder: (context, constraints) {
                      top = constraints.biggest.height;
                      return FlexibleSpaceBar(
                        title: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: AnimatedOpacity(
                            opacity: top < 150 ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 300),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: BlocBuilder<PersonDetailBloc,
                                  PersonDetailState>(
                                builder: (context, state) {
                                  return state.isLoading
                                      ? Center(
                                          child: CircularProgressIndicator(
                                          color: orange,
                                        ))
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: darkColour,
                                                radius: 25.0,
                                                backgroundImage: state
                                                            .persondetails[0]
                                                            .profilePath !=
                                                        null
                                                    ? CachedNetworkImageProvider(
                                                        "$profilepic${state.persondetails[0].profilePath}")
                                                    : AssetImage(
                                                            "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")
                                                        as ImageProvider),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.525,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  state.persondetails[0].name,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(color: white),
                                                ),
                                              ),
                                            )
                                          ],
                                        );
                                },
                              ),
                            ),
                          ),
                        ),
                        centerTitle: true,
                        background: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.6,
                          child:
                              BlocBuilder<PersonDetailBloc, PersonDetailState>(
                            builder: (context, state) {
                              return state.isLoading
                                  ? Center(
                                      child: CircularProgressIndicator(
                                      color: orange,
                                    ))
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.7 /
                                              2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: grey,
                                              image: DecorationImage(
                                                  fit: state.persondetails[0]
                                                              .profilePath !=
                                                          null
                                                      ? BoxFit.cover
                                                      : BoxFit.scaleDown,
                                                  image: state.persondetails[0]
                                                              .profilePath !=
                                                          null
                                                      ? CachedNetworkImageProvider(
                                                          "$largeprofilepic${state.persondetails[0].profilePath}")
                                                      : AssetImage(
                                                              "assets/images/f0fc1ca20e08d638195b9-removebg-preview.png")
                                                          as ImageProvider)),
                                        ),
                                        MovieName(
                                            moviename:
                                                state.persondetails[0].name),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        )
                                      ],
                                    );
                            },
                          ),
                        ),
                      );
                    }),
                    bottom: TabBar(
                      labelPadding: EdgeInsets.all(12.0),
                      tabs: const [Text("Info"), Text("Images")],
                      padding: EdgeInsets.all(8.0),
                      labelColor: white,
                      labelStyle: TextStyle(fontSize: 18, letterSpacing: 1.5),
                      indicatorColor: white,
                      unselectedLabelColor: darkGrey,
                      unselectedLabelStyle:
                          TextStyle(fontSize: 17, letterSpacing: 1.0),
                    ),
                  )
                ];
              }),
              body: TabBarView(children: [
                PersonInfo(
                  personid: personid,
                ),
                PersonImage(
                  personid: personid,
                )
              ])),
        ),
      ),
    );
  }
}
