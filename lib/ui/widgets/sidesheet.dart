import 'package:flutter/material.dart';
import '../../constants/colours/colours.dart';
import '../../utils/navigation.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      radius: MediaQuery.of(context).size.width * 0.1,
                    ),
                  )),
                  const Text(
                    "Person Name",
                    style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox.shrink()),
                  SizedBox(
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
