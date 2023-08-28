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

      return 124;
    }

    return 52;

  }

  static double getFontSizeDashBoardMenu(BuildContext context){
    if(MediaQuery.of(context).size.width<360){
      return 10;
    }

    if(MediaQuery.of(context).size.width>720){

      return 20;
    }

    return 12;
  }


  static double getHeightMenuDashboard(double height , BuildContext context){

    if(MediaQuery.of(context).size.width>720){

      return height*5;
    }

    return height*2+30;
  }

  static double getHeightButton(BuildContext context){
    if(MediaQuery.of(context).size.width>720){
      return 5;
    }

    return 2;
  }

  static double getSizeImageProperty(BuildContext context){
    if(MediaQuery.of(context).size.width>720){

      return 96;
    }

    return 64;
  }

  static double getSizeTextAppBar(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 28;
    }

    return 20;

  }

}