import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';
class AddPropertyPage extends StatefulWidget {
  @override
  State<AddPropertyPage> createState() => _AddPropertyPageState();
}

class _AddPropertyPageState extends State<AddPropertyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height-kToolbarHeight-kBottomNavigationBarHeight,
        margin: const EdgeInsets.all(AppDimension.appSpaceVertical),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(
                child: SizedBox(
                     width: MediaQuery.of(context).size.width/2,
                    child: Image.asset("assets/images/project_manager.png")
                ),
              ),

              const SizedBox(height: AppDimension.appSpaceVertical,),

              Text("Welcome to Landlord".tr,style: AppFont.textStyleHeader(fontSize: AppDimension.getSizeTextAppBar(context),fontWeight: FontWeight.w600),),

              const SizedBox(height: AppDimension.appSpaceVertical/2,),

              Text(
                "You are on your way to better property management. Let Started".tr,
                style: AppFont.textStyleHeader(fontSize: AppDimension.getSizeSubTextTitleAddPropertyPage(context),fontWeight: FontWeight.w400,color: AppColor.greyColor),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AppDimension.appSpaceVertical*2,),

              Container(
                padding: const EdgeInsets.all(AppDimension.appSpaceVertical),
                child: ElevatedButton(onPressed: (){},
                    child: Container(
                      padding: const EdgeInsets.all(AppDimension.appSpaceVertical),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.buildingCircleArrowRight,size: AppDimension.getSizeSubTextTitleAddPropertyPage(context),),
                          const SizedBox(width: AppDimension.appSpaceVertical,),
                          Text(
                            "Add Property".tr,
                            style: AppFont.textStyleTitle(fontSize: AppDimension.getSizeSubTextTitleAddPropertyPage(context),color: AppColor.whiteColor),
                          )
                        ],
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
