import 'package:flutter/material.dart';

class TextAndDescription extends StatelessWidget {
  const TextAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Heading',
            style: TextStyle(
                fontSize: 24,
                color: Colors.black.withOpacity(0.75),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Hello, this is a short description.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.6),
            ),
          )
        ],
      ),
    );
  }
}
