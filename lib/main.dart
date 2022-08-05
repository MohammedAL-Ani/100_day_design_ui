import 'package:flutter/material.dart';

import 'day 4 afg/day 4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day4Screen(),
    );
  }
}
