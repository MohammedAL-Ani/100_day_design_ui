import 'package:design_ui/day%201/day%201.dart';
import 'package:design_ui/day%202/day%202.dart';
import 'package:design_ui/day%203/day%203.dart';
import 'package:design_ui/ui_challenge1/screens/components/head_main_screen.dart';
import 'package:design_ui/ui_challenge2/home_page.dart';
import 'package:design_ui/ui_challenge3/details_screen/detail_screen.dart';
import 'package:design_ui/ui_challenge3/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'day 4/Screens/day 4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsScreen(),
    );
  }
}
