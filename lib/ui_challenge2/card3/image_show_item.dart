import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ImageShow extends StatelessWidget {
  const ImageShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
            height: 200,
            decoration: BoxDecoration(
                color: mainColor, borderRadius: BorderRadius.circular(8))),
        Icon(Icons.image_outlined, color: picHeadingColor, size: 36),
      ],
    );
  }
}
