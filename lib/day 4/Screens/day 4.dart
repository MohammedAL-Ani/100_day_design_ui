import 'package:design_ui/day%204/border_box.dart';
import 'package:design_ui/day%204/utils/constants.dart';
import 'package:design_ui/day%204/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class Screen4Day extends StatelessWidget {
  const Screen4Day({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BorderBox(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.menu,
                        color: COLOR_BLACK,
                      ),
                    ),
                    BorderBox(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.settings,
                          color: COLOR_BLACK,
                        ))
                  ],
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text(
                  "City ",
                  style: themeData.textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
