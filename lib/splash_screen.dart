
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';
import 'package:propertymanagement/app_style/app_color.dart';

import 'home_page/main_home_page.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                "assets/images/logo_start_app.png",
                 height: 200,
            ).animate(
              onComplete: (AnimationController controller){
                Future.delayed(const Duration(seconds: 3),(){
                  Get.offAll(()=>MainHomePage(indexBottomNavigation: 2,));
                });
              }
            ).scaleXY(
              begin: 0.7,end: 1,duration:const Duration(milliseconds: 250)
            ),

            const SizedBox(height: AppDimension.appSpaceVertical,),

            Text("Property Management".tr,style: AppFont.textStyleHeader(color: AppColor.whiteColor,fontWeight: FontWeight.bold,fontSize: 24),)
          ],
        ),
      ),
    );
  }
}
