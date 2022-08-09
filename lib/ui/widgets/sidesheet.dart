import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:cinemapranthan/bloc/auth/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/colours/colours.dart';
import '../../utils/navigation.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Container(
      color: darkColour,
      child: SafeArea(
        child: SizedBox.expand(
          child: Container(
            margin: const EdgeInsets.only(
              right: 1.0,
            ),
            decoration: const BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
            child: Container(
              padding: const EdgeInsets.only(right: 4.0, top: 4.0, bottom: 4.0),
              margin: const EdgeInsets.only(right: 1.0, top: 1.0, bottom: 1.0),
              decoration: const BoxDecoration(
                  color: darkColour,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.025),
                    child: CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(user!.photoURL!),
                      radius: MediaQuery.of(context).size.width * 0.1,
                    ),
                  )),
                  Text(
                    user.displayName ?? "",
                    style: const TextStyle(
                        color: white,
                        fontSize: 20.0,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox.shrink()),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AuthBloc>(context)
                          .add(const AuthEvent.signout());
                      goback(context);
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout_outlined,
                          color: white,
                        ),
                        title: Text(
                          "Log Out",
                          style: TextStyle(
                              color: white,
                              fontSize: 17.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: (() => goback(context)),
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: white,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
