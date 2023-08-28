import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_font.dart';

import '../../app_style/app_dimension.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin:  EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical/2),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),

              //*user profile
              const SizedBox(
                height: AppDimension.profileUserSize/1.5,
                width: AppDimension.profileUserSize/1.5,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                ),
              ),

              
              const SizedBox(height: AppDimension.appSpaceVertical,),
              //*name
              Text("Username",style: AppFont.textStyleHeader(fontSize: AppDimension.getSizeTextInformationProfilePage(context)+2,fontWeight: FontWeight.w500),),
              //*email
              Text("Username@gmail.com",style: AppFont.textStyleHeader(fontSize: AppDimension.getSizeTextInformationProfilePage(context)+2,fontWeight: FontWeight.w400,color: AppColor.greyColor),),

               const SizedBox(height: AppDimension.appSpaceVertical*2,),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                  color: AppColor.whiteColor,
                  boxShadow: kElevationToShadow[1]
                ),
                child: Column(
                  children: [
                    
                    //*phone
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                        color: AppColor.grey246Color
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Phone".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("099842181".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    //*occupation
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Occupation".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("Businessman".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),

                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    //*Designation
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                          color: AppColor.grey246Color
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Designation".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("Land Lord".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    //*Institution
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Institution".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("ABC Company".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    //*Passport No
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                          color: AppColor.grey246Color
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Passport No".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("123958BC".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    //*Passport No
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Gender".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),)),

                          Expanded(child: Text("Male".tr,style: AppFont.textStyleSubTitle(fontSize: AppDimension.getSizeTextInformationProfilePage(context)),textAlign: TextAlign.end,)),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical,),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: AppDimension.appSpaceVertical),
                child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppDimension.appSpaceVertical),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Edit".tr,style: AppFont.textStyleTitle(fontSize: AppDimension.getSizeSubTextTitleAddPropertyPage(context),color: AppColor.whiteColor),),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
