import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  const MyTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Heading',
          style: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.75),
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Hello, this is a short description.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.6),
          ),
        )
      ],
    );
  }
}
