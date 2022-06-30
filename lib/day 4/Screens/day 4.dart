import 'package:design_ui/day%204/border_box.dart';
import 'package:design_ui/day%204/utils/constants.dart';
import 'package:design_ui/day%204/utils/custome_functions.dart';
import 'package:design_ui/day%204/utils/sample_data.dart';
import 'package:design_ui/day%204/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class Screen4Day extends StatelessWidget {
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
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Text(
                  "San Francisco",
                  style: themeData.textTheme.bodyText1,
                ),
              ),
              Padding(
                  padding: sidePadding,
                  child: Divider(
                    height: padding,
                    color: COLOR_GREY,
                  )),
              addVerticalSpace(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ["<\$220,000", "For Sale", "3-4 Beds", ">1000 sqft"]
                      .map((filter) => ChoiceOption(text: filter))
                      .toList(),
                ),
              ),
              addVerticalSpace(10),
              Expanded(
                  child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                        itemCount: RE_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(itemData: RE_DATA[index]);
                        },
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String? text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text!,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  itemData["image"],
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Positioned(
                  top: 15,
                  right: 15,
                  child: BorderBox(
                    child: Icon(
                      Icons.favorite_border,
                      color: COLOR_BLACK,
                    ),
                  ))
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(
                "${formatCurrency(itemData["amount"])}",
                style: themeData.textTheme.headline4,
              ),
              addHorizontalSpace(10),
              Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2,
              ),
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
            style: themeData.textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
