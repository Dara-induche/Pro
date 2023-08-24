import 'package:flutter/cupertino.dart';

class AppDimension{


  static const double appSpaceVertical = 10;

  static const double normalMargin = 6;

  static const double normalSizeIcon = 24;

  static const double defaultElevation = 2;

  static const double smallPadding = 4;

  static const double profileUserSize = 128;

  static const double defaultRadius = 8;


  static double getIconDashBoardSize(BuildContext context){


    if(MediaQuery.of(context).size.width<360){
      return 38;
    }

    if(MediaQuery.of(context).size.width>720){

      return 64;
    }

    return 52;

  }

  static double getFontSizeDashBoardMenu(BuildContext context){
    if(MediaQuery.of(context).size.width<360){
      return 10;
    }

    if(MediaQuery.of(context).size.width>720){

      return 14;
    }

    return 12;
  }
}