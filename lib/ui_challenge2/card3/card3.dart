import 'package:design_ui/ui_challenge2/card3/label_button_item.dart';
import 'package:design_ui/ui_challenge2/card3/text_item_card3.dart';
import 'package:flutter/material.dart';

import 'action_buttons_item.dart';
import 'image_show_item.dart';

class MyCard3 extends StatelessWidget {
  const MyCard3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      // width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageShow(),
          SizedBox(
            height: 20,
          ),
          LabelButton(),
          TextAndDescription(),
          SizedBox(
            height: 20,
          ),
          ActionButtons(),
        ],
      ),
    );
  }
}
