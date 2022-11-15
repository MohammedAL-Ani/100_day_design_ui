import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.more_vert,
      color: Colors.black.withOpacity(0.5),
      size: 30,
    );
  }
}
