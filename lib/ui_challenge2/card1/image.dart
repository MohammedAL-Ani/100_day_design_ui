import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HeadingImage extends StatelessWidget {
  const HeadingImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
      child: Icon(Icons.image_outlined, color: picHeadingColor, size: 36),
    );
  }
}
