import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 80,
        height: 30,
        alignment: Alignment.center,
        // padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: labelButtonColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Text(
          'Label',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.75),
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
