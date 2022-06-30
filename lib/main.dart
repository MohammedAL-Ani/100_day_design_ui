import 'package:design_ui/day%202.dart';
import 'package:design_ui/day%203.dart';
import 'package:design_ui/day%204/Screens/day%204.dart';
import 'package:design_ui/day%204/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen4Day(),
    );
  }
}
