import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../app_style/app_color.dart';
import '../../app_style/app_dimension.dart';
import '../../app_style/app_font.dart';
class ItemTransaction extends StatefulWidget {
  final GestureTapCallback onTap;

  final GestureTapCallback onTapMenu;

  ItemTransaction({required this.onTap,required this.onTapMenu});

  @override
  State<ItemTransaction> createState() => _ItemTransactionState();
}

class _ItemTransactionState extends State<ItemTransaction> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimension.smallPadding*3),
        margin: const EdgeInsets.only(top: AppDimension.appSpaceVertical,left: AppDimension.appSpaceVertical/2,right: AppDimension.appSpaceVertical/2),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5,color: AppColor.greyColor.withOpacity(0.5)),
            color: AppColor.backGroundScaffold,
            borderRadius:BorderRadius.circular(AppDimension.defaultRadius)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Tenant",style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w500),),
                 const SizedBox(height: AppDimension.appSpaceVertical/2,),
                 //
                 Row(
                   children: [
                     Icon(FontAwesomeIcons.paperclip,color: AppColor.primaryColor,size: AppDimension.appSpaceVertical*1.5,),
                     const SizedBox(width: AppDimension.appSpaceVertical/2,),
                     Text("1 ${"Attachment".tr}",style: AppFont.textStyleTitle(fontSize: 12,fontWeight: FontWeight.w400),),
                   ],
                 ),

                 const SizedBox(height: AppDimension.appSpaceVertical/2,),
                 //
                 Row(
                   children: [
                     Icon(FontAwesomeIcons.building,color: AppColor.primaryColor,size: AppDimension.appSpaceVertical*1.5,),
                     const SizedBox(width: AppDimension.appSpaceVertical/2,),
                     Text("Green Lake",style: AppFont.textStyleTitle(fontSize: 12,fontWeight: FontWeight.w400),),
                   ],
                 )
               ],
             ),
           ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("100\$",style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.greenColor),),
                  const SizedBox(height: AppDimension.appSpaceVertical/2,),
                  Text("12 Sep , 2023",style: AppFont.textStyleTitle(fontSize: 12,fontWeight: FontWeight.w400),),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
