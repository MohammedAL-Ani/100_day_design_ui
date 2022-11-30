

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 35,
                          height: 35,

                          decoration:
                          BoxDecoration(

                              border: Border.all(
                                  width: 2,
                                  color: ColorConstants.linearGradColor1
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/imgkarh.png'
                                    // 'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png'
                                  ),
                                  fit: BoxFit.cover
                              )),
                        ),
                      ),

                      Expanded(
                        flex: 5,
                        child:  Text(
                          'Account_1',
                          style: getSemiBoldStyle(color: Colors.white,fontSize:16)),
                        ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              SvgPicture.asset('assets/svg/notification.svg'),
                              Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 8.0,
                                      backgroundColor:  ColorConstants.redGradColor2,
                                    ),
                                    Text("5",style:getSemiBoldStyle(color: Colors.white,fontSize: 12.0)

                                    ), ]


                              ),


                            ],),
                        ),
                      ),

                    ],
                  ),
                ),
                 SizedBox(
                   height: 45,
                 ),
                Text('Current Wallet Balance',style: getSemiBoldStyle(color: Colors.white,fontSize: 14)
                  ,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$ 5,323.00',style: getSemiBoldStyle(color: Colors.white,fontSize: 40),),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_arrow_down,color:ColorConstants.iconDownColor,size: 16,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(top: 3,bottom: 3,left: 12,right: 12),
                  decoration: BoxDecoration(
                    color: ColorConstants.subMainColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('BTC : 0,00335',style: getMediumStyle(color: Colors.white,fontSize: 12),),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_drop_up,color: ColorConstants.linearGradColor1,size: 16,),
                      Text('\+6.54\%',style: getMediumStyle(color: ColorConstants.linearGradColor1,fontSize: 12),),

                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                       Stack(
                         alignment: Alignment.center,
                         children:<Widget>[
                         Container(
                           width: 76,
                            height: 76,
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                               color:ColorConstants.buttonStatusColor ),),
                          SvgPicture.asset('assets/svg/send_money.svg',
                        fit: BoxFit.cover,
                        height: 34,
                        width: 34,


                        )
                         ])
                        ,SizedBox(height: 16,),
                        Text('Send',style: getSemiBoldStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 76,
                          height: 76,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                                0,
                                1,



                              ], colors: [
                                ColorConstants.linearbuttonStatusColor2,

                                ColorConstants.linearbuttonStatusColor1,
                              ])),

                          child: Icon(Icons.add,color: Colors.white,size: 34,),

                        ),SizedBox(height: 16,),
                        Text('Buy',style: getSemiBoldStyle(color: Colors.white,fontSize: 14),),


                      ],
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    Column(
                      children: [
                        Stack(
                        alignment: Alignment.center,
                        children:<Widget>[
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:ColorConstants.buttonStatusColor ),),
                          SvgPicture.asset('assets/svg/receive_money.svg',
                            fit: BoxFit.cover,
                            height: 34,
                            width: 34,
                          )
                        ]
                        ),SizedBox(height: 16,),
                        Text('Receive',style: getSemiBoldStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 47,
                    width: 332,
                    decoration: BoxDecoration(
                      color: ColorConstants.tokenAndNFTColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 3),
                          height: 39,
                          width: 166,
                          decoration: BoxDecoration(
                              color: ColorConstants.tokenColor,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('Token',style: getSemiBoldStyle(color: ColorConstants.textTokenColor,fontSize: 16,),)),
                        ),
                        SizedBox(width: 40,),

                        Text('NFTs',style: getSemiBoldStyle(color: ColorConstants.textNFTColor,fontSize: 16),)
                      ],
                    ),

                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                CurrencyDetails(iconType: 'assets/svg/bitcoin.svg', type: 'BTC', typeName: 'Bitcoin', image: 'assets/svg/line_change.svg', price: '\$36,590.00', changePrice: '\+6.21\%', color: ColorConstants.linearGradColor1,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(thickness: 1,
                  color: ColorConstants.tokenAndNFTColor,),
                ),
                CurrencyDetails(iconType: 'assets/svg/ethereum.svg', type: 'ETH', typeName: 'Ethereum', image: 'assets/svg/redline_change.svg', price: '\$2,590.00', changePrice: '\+5.21\%', color: ColorConstants.redGradColor2,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(thickness: 1,
                    color: ColorConstants.tokenAndNFTColor,),
                ),
                CurrencyDetails(iconType: 'assets/svg/solona.svg', type: 'SOL', typeName: 'Solona', image: 'assets/svg/redline_change.svg', price: '\$390.00', changePrice: '\+2.21\%', color: ColorConstants.redGradColor2,),



              ],
            ),
          ),






    );
  }
}



class CurrencyDetails extends StatelessWidget {
  final String iconType ;
  final String type;
  final String typeName;
  final String image;
  final String price;
  final String changePrice;
  final Color color;
  const CurrencyDetails({Key? key, required this.iconType, required this.type, required this.typeName, required this.image, required this.price, required this.changePrice, required this.color,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 45,
              width: 45,
              child: SvgPicture.asset(iconType,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(type,style: getBoldStyle(color: Colors.white,fontSize: 16),),
              Text(typeName,style: getMediumStyle(color: ColorConstants.textTypeColor,fontSize: 12),),],),
          SvgPicture.asset(image),
          Column(
            children: [
              Text(price,style: getBoldStyle(color: Colors.white,fontSize: 14),),
              Text(changePrice,style: getSemiBoldStyle(color: color,fontSize: 12),),],),

        ],
      ),
    );
  }
}
