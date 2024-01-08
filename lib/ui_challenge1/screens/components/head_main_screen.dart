

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constant.dart';

class HeadMainScreen extends StatefulWidget {
  const HeadMainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HeadMainScreen> createState() => _HeadMainScreenState();
}

class _HeadMainScreenState extends State<HeadMainScreen> {

  String rateText = "D(17+)";
  bool _isBoolean = false;
  DateTime dateText = DateTime(2022,11,19,17, 30);
  DateTime selectedDate2=DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        elevation: 0,
        color: const Color(0xff251977),
        height: 63.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: const Text(
          "Take a seat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      backgroundColor: const Color(0xff1C1A29),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.width * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        child: FloatingActionButton(
          backgroundColor: mainColor,
          onPressed: () {},
          child: Icon(
            Icons.play_arrow_sharp,
            size: 42,
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: ClipRRect(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/emma-2.jpeg'),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RATU ILMU HITAM",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              "8,9 / 10 from IMDb",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Horror',
                              ),
                              style: TextButton.styleFrom(
                                  foregroundColor: secondWhiteColor, shape: StadiumBorder(),
                                  backgroundColor: boxColor1,
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Drama',
                              ),
                              style: TextButton.styleFrom(
                                  foregroundColor: secondWhiteColor, shape: StadiumBorder(),
                                  backgroundColor: boxColor1,
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            SvgPicture.asset(
              'assets/svg/vector.svg',
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/emma.jpeg'),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      )),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Director  : Kimo Stamboel",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Writter   : Joko Anwar",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Duration  : 1 hour 39 minute(s)",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Rating   : $rateText",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Schedule"),
                      style: TextButton.styleFrom(
                          foregroundColor: firstWhiteColor, textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 40)),
                    ),
                  ],
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: secondWhiteColor, textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                  onPressed: () {},
                  child: Text("Synopsis"),
                ),
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: mainColor,
                thickness: 2,
              )),
              Expanded(
                  child: Divider(
                color: firstWhiteColor,
                thickness: 2,
              )),
            ]),
            SizedBox(
              height: 10,
            ),
            DatePicker(
              DateTime.now(),
              height: 80,
              width: 80,
              
              initialSelectedDate: selectedDate2,
              selectedTextColor: Colors.white,
              selectionColor: mainColor,
              monthTextStyle:
                  TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
              dayTextStyle:
                  TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
              dateTextStyle:
                  TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
              onDateChange: (date) {
                // New date selected
                setState(() {

                });
              },
            ),
             Visibility(
               visible: _isBoolean,
                 child: Center(child: CircularProgressIndicator())),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select Cinema",
              style: TextStyle(
                color: secondWhiteColor,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cinema XXI Ambarukmo Plaza",
                  style: TextStyle(
                    color: firstWhiteColor,
                    fontSize: 15,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/arrow_downlist.svg',
                  color: secondWhiteColor,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: secondWhiteColor,
            ),
            SizedBox(
              height: 11.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "REGULAR 2D",
                  style: TextStyle(
                    color: firstWhiteColor,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Rp 30.000",
                  style: TextStyle(
                    color: firstWhiteColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 15.0),
                    padding: EdgeInsets.only(top: 10.0),
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "15:012",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "seat available",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                        color: boxColor1,
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "15:012",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "seat available",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                        color: boxColor2,
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "16:55",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "All seat taken",
                          style: TextStyle(
                            color: secondWhiteColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
