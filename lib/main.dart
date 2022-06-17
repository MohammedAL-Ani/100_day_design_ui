import 'package:flutter/material.dart';

import 'day 1.dart';
import 'day 2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Day2Screen(),
    );
  }
}
