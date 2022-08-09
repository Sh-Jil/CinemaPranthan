import 'package:flutter/material.dart';

import '../../../../constants/colours/colours.dart';

class SettingHead extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? ontap;
  final String? subtitle;
  const SettingHead(
      {Key? key,
      required this.icon,
      required this.title,
      this.ontap,
      this.subtitle})

      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: grey, borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        padding: const EdgeInsets.all(4.0),
        margin: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            color: darkColour, borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(


          onTap: ontap,

          leading: Icon(
            icon,
            color: white,
          ),
          title: Text(
            title,
            style: const TextStyle(
                color: white,
                fontSize: 17.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w500),
          ),


          subtitle: subtitle != null
              ? Text(subtitle ?? "",
                  style: const TextStyle(
                      overflow: TextOverflow.fade,
                      color: grey,
                      fontSize: 16,
                      letterSpacing: 1.0))
              : null,

          trailing: const Icon(
            Icons.arrow_right_rounded,
            color: white,
          ),
        ),
      ),
    );
  }
}
