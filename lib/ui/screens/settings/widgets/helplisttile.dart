import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../constants/colours/colours.dart';

class HelpListTile extends StatelessWidget {
  final Color buttoncolor;
  void Function()? ontap;
  final String title;
  final IconData icon;
  HelpListTile(
      {Key? key,
      required this.buttoncolor,
      required this.title,
      required this.icon,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttoncolor)),
            onPressed: ontap,
            child: ListTile(
              horizontalTitleGap: 0,
              title: Text(
                title,
                style: const TextStyle(
                    color: white,
                    fontSize: 17,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                icon,
                color: white,
              ),
            )),
      ),
    );
  }
}
