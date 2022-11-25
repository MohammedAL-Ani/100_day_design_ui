
import 'package:design_ui/day%204/utils/constants.dart';
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
        body: SingleChildScrollView(
          child: Padding(
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
                SizedBox(height: 35,),

                Row(
                  children: [
                    CardNFTs(image: 'assets/images/NFTs1.png'),
                    SizedBox(width: 23,),
                    CardNFTs(image: 'assets/images/NFTs2.png'),
                  ],
                ),
                Row(
                  children: [
                    CardNFTs(image: 'assets/images/NFTs3.png'),
                    SizedBox(width: 23,),
                    CardNFTs(image: 'assets/images/NFTs4.png'),
                  ],
                ),
                Row(
                  children: [
                    CardNFTs(image: 'assets/images/NFTs5.png'),
                    SizedBox(width: 23,),
                    CardNFTs(image: 'assets/images/NFTs6.png'),
                  ],
                ),

              ],
            ),
          ),
        ),

    );
  }
}

class CardNFTs extends StatelessWidget {
  final String image ;
  const CardNFTs({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Image.asset(image,
              width: 156,
              height: 159,),
            Container(
              margin: EdgeInsets.all(6.0),
              width: 28,
              height: 17,
              decoration: BoxDecoration(
                  color: ColorConstants.subMainColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30.0)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 10,
                  ),
                  SizedBox(width: 2,),
                  Text('2',style: getSemiBoldStyle(color: Colors.black,fontSize: 8.5),)

                ],
              ),
            ),
          ],
        ),
        Container(
          width: 156,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.0), bottomLeft: Radius.circular(20.0)  ),
            color: ColorConstants.buttonStatusColor.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Super Influencers',style: getSemiBoldStyle(color: Colors.white,fontSize: 12),),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\#1267",style: getBoldStyle(color: Colors.white,fontSize: 14),),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/coins.svg"),
                        SizedBox(width: 3,),
                        Text("6.64",style:getBoldStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
