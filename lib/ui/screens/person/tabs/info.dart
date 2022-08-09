import 'package:cinemapranthan/bloc/persondetail/person_detail_bloc.dart';
import 'package:cinemapranthan/ui/screens/person/tabs/widgets/credittile.dart';
import 'package:cinemapranthan/ui/screens/person/tabs/widgets/textstyles.dart';
import 'package:cinemapranthan/utils/date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../backend/models/personprofile/personprofile.dart';
import '../../../../constants/colours/colours.dart';

class PersonInfo extends StatelessWidget {
  final String personid;
  const PersonInfo({Key? key, required this.personid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<PersonCreditBloc>(context)
          .add(PersonDetailEvent.getcredits(personid: personid));
    });
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: BlocBuilder<PersonDetailBloc, PersonDetailState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                    color: orange,
                  ))
                : CustomScrollView(shrinkWrap: true, slivers: [
                    SliverList(
                        delegate: SliverChildBuilderDelegate(((context, index) {
                      PersonDetail head = state.persondetails[0];
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleContent(
                              content: head.biography,
                              height: 1.5,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            if (head.alsoKnownAs.isNotEmpty)
                              TitleContent(
                                  height: 1.5,
                                  content:
                                      "Also known as ${head.alsoKnownAs.toString().substring(1, head.alsoKnownAs.toString().length - 1)}"),
                            if (head.birthday != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const HeadingInfo(heading: "Born On"),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  TitleContent(
                                      height: 2.0,
                                      content: dateformating(head.birthday))
                                ],
                              ),
                            if (head.deathday != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  const HeadingInfo(heading: "Passed away On"),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  TitleContent(
                                      height: 2.0,
                                      content: dateformating(head.deathday))
                                ],
                              ),
                            if (head.placeOfBirth != null &&
                                head.placeOfBirth!.isNotEmpty)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  const HeadingInfo(heading: "Born in"),
                                  const SizedBox(
                                    width: 30.0,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.65,
                                      child: TitleContent(
                                          height: 2.0,
                                          content: head.placeOfBirth!))
                                ],
                              )
                          ]);
                    }), childCount: 1)),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 25.0,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: BlocBuilder<PersonCreditBloc, PersonCreditState>(
                          builder: (context, state) {
                            return state.isLoading
                                ? const Center(
                                    child: CircularProgressIndicator(
                                    color: orange,
                                  ))
                                : state.personcredits[0].cast.isNotEmpty ||
                                        state.personcredits[0].crew.isNotEmpty
                                    ? ListView.builder(
                                        physics: const BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: ((context, index) {
                                          if (index <
                                              state.personcredits[0].cast
                                                  .length) {
                                            var head = state
                                                .personcredits[0].cast[index];
                                            return CreditTile(
                                                id: head.id,
                                                media: head.mediaType,
                                                imageurl: head.posterPath ?? "",
                                                title: head.title == null &&
                                                        head.name == null
                                                    ? "_"
                                                    : head.title ?? head.name!,
                                                subtitle:
                                                    head.character ?? "_");
                                          } else {
                                            var head =
                                                state.personcredits[0].crew[
                                                    index -
                                                        state.personcredits[0]
                                                            .cast.length];
                                            return CreditTile(
                                                id: head.id,
                                                media: head.mediaType,
                                                imageurl: head.posterPath ?? "",
                                                title: head.title == null &&
                                                        head.name == null
                                                    ? "_"
                                                    : head.title ?? head.name!,
                                                subtitle:
                                                    head.character ?? "_");
                                          }
                                        }),
                                        itemCount: state
                                                .personcredits[0].cast.length +
                                            state.personcredits[0].crew.length,
                                      )
                                    : const SizedBox();
                          },
                        ),
                      ),
                    )
                  ]);
          },
        ));
  }
}
