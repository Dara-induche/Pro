import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';
import 'package:propertymanagement/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Property Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: AppColor.whiteColor,
        primaryColor: AppColor.primaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: AppDimension.smallPadding,
          unselectedLabelStyle: AppFont.textStyleSubTitle(
            fontSize: 10,
            fontWeight: FontWeight.w400
          ),
          selectedLabelStyle: AppFont.textStyleSubTitle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColor.primaryColor
          ),
        ),
        scaffoldBackgroundColor: AppColor.backGroundScaffold,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

