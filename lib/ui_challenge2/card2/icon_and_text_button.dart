import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyButtonWithTextAndIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? colorButton;
  const MyButtonWithTextAndIcon(
      {Key? key, required this.title, required this.icon, this.colorButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(
        icon,
        color: colorButton ?? iconOfButtonNavColor,
      ),
      //rgb(33 150 243)
      SizedBox(
        height: 7,
      ),
      Text(
        title,
        style: TextStyle(
            color: colorButton ?? iconOfButtonNavColor,
            fontSize: 12.0,
            fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
