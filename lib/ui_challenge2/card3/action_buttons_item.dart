import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Action',
              style: TextStyle(color: passOnButtonColor, fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
                fixedSize: Size(150, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                side: BorderSide(width: 1.0, color: passOnButtonColor)),
          ),
          SizedBox(
            width: 5,
          ),
          MaterialButton(
            minWidth: 150,
            height: 45,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            color: passOnButtonColor,
            onPressed: () {},
            child: Text(
              'Action',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
