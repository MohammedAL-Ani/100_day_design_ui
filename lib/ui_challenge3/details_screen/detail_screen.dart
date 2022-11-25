
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: ColorConstants.mainColor,
          title: Text(
              'Market',
              style: getSemiBoldStyle(color: Colors.white,fontSize:24)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    SvgPicture.asset('assets/svg/notification.svg'),
                    Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                            radius: 8.0,
                            backgroundColor: ColorConstants.redGradColor2,
                          ),
                          Text("5",style:getSemiBoldStyle(color: Colors.white,fontSize: 12.0),
                          )
                        ]),
                  ],),
              ),
            ),

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                      children: [
                        Container(width: 88,height: 30, decoration: BoxDecoration(color: ColorConstants.subMainColor,borderRadius: BorderRadius.circular(50.0)), child: Center(child: Text('All NFTs',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),))),
                       SizedBox(width: 5,),
                       Container(width: 56,height: 30, decoration: BoxDecoration(color: ColorConstants.subMainColor,borderRadius: BorderRadius.circular(50.0)),child: Center(child: Text('Art',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),))),
                        SizedBox(width: 5,),
                        Container(width: 86,height: 30,decoration: BoxDecoration(color: ColorConstants.subMainColor,borderRadius: BorderRadius.circular(50.0)),child: Center(child: Text('Collectibles',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),))),
                        SizedBox(width: 5,),
                         Container(width: 59,height: 30,decoration: BoxDecoration(color: ColorConstants.subMainColor,borderRadius: BorderRadius.circular(50.0)),child: Center(child: Text('Music',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),))),
                        SizedBox(width: 5,),
                         Container(width: 91,height: 30,decoration: BoxDecoration(color: ColorConstants.subMainColor,borderRadius: BorderRadius.circular(50.0)),child: Center(child: Text('Photography',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),))),
                      ],
    ),
              ),
              SizedBox(height: 20,),
                 Icon(
                     Icons.favorite_border,
                     color: Colors.black,
                   ),
              // Container(
              //   width: 156,
              //   height: 224,
              //   decoration: BoxDecoration(
              //     color: ColorConstants.subMainColor,
              //     borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0) ,topRight: Radius.circular(20.0))
              //   ),
              //   child:
                Image.asset('assets/images/NFTs1.png'),
              // )

            ],
          ),
        ),

    );
  }
}
