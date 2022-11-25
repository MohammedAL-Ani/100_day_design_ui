import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstants{
  static const mainColor = const Color(0xFF0F111E);
  static const subMainColor = const Color(0xff2F2F34);
  static const linearGradColor1 = const Color(0xff0AFF96);
  static const redGradColor2 = const Color(0xffFF002E);
  static const iconDownColor = const Color(0xffA0A0A0);
  static const linearbuttonStatusColor1 = const Color(0xff0061FF);
  static const linearbuttonStatusColor2 = const Color(0xff6100FF);
  static const buttonStatusColor = const Color(0xff2A3547);
  static const tokenAndNFTColor = const Color(0xff212436);
  static const tokenColor = const Color(0xff3B3F58);
  static const textTokenColor = const Color(0xffE9E9E9);
  static const textNFTColor = const Color(0xff7C7D82);
  static const textTypeColor = const Color(0xffA0A0A0);






}


class FontConstants{
  static const String fontFamily = "Urbanist";
}

class FontWeightManager{
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize{
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
}

  TextStyle _getTextStlyes(double fontSize , FontWeight fontWeight, Color color,){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight,

    );
  }

//regular style

  TextStyle getRegularStyle(
      {double fontSize = FontSize.s12 , required Color color}){
    return _getTextStlyes(fontSize, FontWeightManager.regular, color);
  }

//medium style

  TextStyle getMediumStyle(
      {double fontSize = FontSize.s12 , required Color color}){
    return _getTextStlyes(fontSize, FontWeightManager.medium, color);
  }


//bold style

  TextStyle getBoldStyle(
      {double fontSize = FontSize.s12 , required Color color}){
    return _getTextStlyes(fontSize, FontWeightManager.bold, color);
  }

//semiBold style

  TextStyle getSemiBoldStyle(
      {double fontSize = FontSize.s12 , required Color color}){
    return _getTextStlyes(fontSize, FontWeightManager.semiBold, color);
  }



