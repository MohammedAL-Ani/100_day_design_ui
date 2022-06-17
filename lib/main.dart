import 'package:design_ui/day%203.dart';
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
      theme: ThemeData(),
      home: Day3Screen(),
    );
  }
}
