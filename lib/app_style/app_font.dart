import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont{


  static TextStyle textStyleHeader({double fontSize = 20,FontWeight fontWeight = FontWeight.bold,Color color = Colors.black}){
    return GoogleFonts.kantumruyPro(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color
    );
  }

  static TextStyle textStyleTitle({double fontSize = 18,FontWeight fontWeight = FontWeight.w600,Color color = Colors.black}){
    return GoogleFonts.kantumruyPro(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
    );
  }

  static TextStyle textStyleSubTitle({double fontSize = 14,FontWeight fontWeight = FontWeight.w400,Color color = Colors.black}){
    return GoogleFonts.kantumruyPro(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
    );
  }

  static TextStyle textStyleNormal({double fontSize = 12,FontWeight fontWeight = FontWeight.normal,Color color = Colors.black}){
    return GoogleFonts.kantumruyPro(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
    );
  }



}