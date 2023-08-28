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
        splashColor: AppColor.primaryColor.withOpacity(0.1),
        primaryColor: AppColor.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(AppColor.greyColor),
            backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
            foregroundColor: MaterialStateProperty.all(AppColor.whiteColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimension.defaultRadius)
            )
            )
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: AppDimension.defaultElevation,
          unselectedLabelStyle: AppFont.textStyleSubTitle(
            fontSize: AppDimension.getTextSizeBottomNavigationUnSelected(context),
            fontWeight: FontWeight.w400
          ),
          selectedLabelStyle: AppFont.textStyleSubTitle(
              fontSize: AppDimension.getTextSizeBottomNavigationSelected(context),
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

