import 'package:design_ui/ui_challenge2/card2/icon_and_text_button.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyCard2 extends StatelessWidget {
  const MyCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: new EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyButtonWithTextAndIcon(title: 'Home', icon: Icons.home),
          SizedBox(
            width: 10,
          ),
          MyButtonWithTextAndIcon(
            title: "Offers",
            icon: Icons.local_offer,
            colorButton: passOnButtonColor,
          ),
          SizedBox(
            width: 10,
          ),
          MyButtonWithTextAndIcon(title: "Cart", icon: Icons.shopping_cart),
          SizedBox(
            width: 10,
          ),
          MyButtonWithTextAndIcon(
            title: "Profile",
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
