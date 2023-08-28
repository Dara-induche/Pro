import 'package:flutter/cupertino.dart';

class AppDimension{


  static const double appSpaceVertical = 10;

  static const double normalMargin = 6;

  static const double normalSizeIcon = 24;

  static const double defaultElevation = 2;

  static const double smallPadding = 4;

  static const double profileUserSize = 128;

  static const double defaultRadius = 8;

  static double getIconSizeFloatingButton(BuildContext context){
    if(MediaQuery.of(context).size.width>720){
      return 48;
    }

    return 32;

  }


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

  static double getSizeImageItemProperty(BuildContext context){
    if(MediaQuery.of(context).size.width>720){

      return 96;
    }

    return 64;
  }

  static double getSizeTextAppBar(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 32;
    }

    return 20;
  }

  static double getSizeIconNotificationItem(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 48;
    }

    return 24;
  }

  static double getTextSizeBottomNavigationSelected(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 20;
    }

    return 12;
  }

  static double getTextSizeBottomNavigationUnSelected(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 20;
    }

    return 10;
  }

  static double getTextSizeHeaderItemNotification(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 20;
    }

    return 16;
  }

  static double getTextSizeSubtitleItemNotification(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 18;
    }

    return 14;
  }

  static double getTextSizeTimeItemNotification(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 16;
    }

    return 13;
  }

  static double getSizeIconBottomNavigation(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 32;
    }

    return 24;
  }


  static double getSizeTextTitleItemProperty(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 18;
    }

    return 14;
  }

  static double getSizeTextSubTitleItemProperty(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 16;
    }

    return 12;
  }


  static double getSizeSubTextTitleAddPropertyPage(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 24;
    }

    return 18;
  }

  static double getSizeTextInformationProfilePage(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 20;
    }

    return 16;
  }

  static double getSizeIconMiddleBottomNavigation(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 80;
    }

    return 60;
  }


  static double getSizeTextSubtitleItemTransaction(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 16;
    }

    return 12;
  }

  static double getSizeIconItemTransaction(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 24;
    }

    return 16;
  }


  static double getTextSizeSeeAll(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 24;
    }

    return 20;
  }


  static double getTextSizeDrawer(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 22;
    }

    return 18;
  }

  static double getSizeIconDrawer(BuildContext context){

    if(MediaQuery.of(context).size.width>720){
      return 28;
    }

    return 24;
  }

}