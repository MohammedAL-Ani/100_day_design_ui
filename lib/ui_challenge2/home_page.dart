import 'package:design_ui/ui_challenge2/card1/card1.dart';
import 'package:design_ui/ui_challenge2/card2/card2.dart';
import 'package:design_ui/ui_challenge2/card3/card3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          backgroundColor: const Color(0xfff0f0f0),
          elevation: 0,
          toolbarHeight: 20,
        ),
        backgroundColor: const Color(0xfff0f0f0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              MyCard1(),
              SizedBox(
                height: 20,
              ),
              MyCard2(),
              SizedBox(
                height: 20,
              ),
              MyCard3(),
            ],
          ),
        ));
  }
}
