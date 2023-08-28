import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_font.dart';

import '../../app_style/app_dimension.dart';

class ItemProperty extends StatefulWidget {

  final GestureTapCallback onTap;

  final GestureTapCallback onTapMenu;

  ItemProperty({required this.onTap,required this.onTapMenu});


  @override
  State<ItemProperty> createState() => _ItemPropertyState();
}

class _ItemPropertyState extends State<ItemProperty> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://picsum.photos/200/300?grayscale",
                height: AppDimension.getSizeImageItemProperty(context),
                width: AppDimension.getSizeImageItemProperty(context),
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: AppDimension.appSpaceVertical,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Test Building",
                    style: AppFont.textStyleSubTitle(
                    fontWeight: FontWeight.w600,
                    fontSize: AppDimension.getSizeTextTitleItemProperty(context),
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),

                 const SizedBox(height: AppDimension.appSpaceVertical/2,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: AppDimension.getSizeTextSubTitleItemProperty(context),
                        height: AppDimension.getSizeTextSubTitleItemProperty(context),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor
                        ),
                      ),

                      const SizedBox(width: 8,),


                      Text("3 ${"Tenanted".tr}",style:AppFont.textStyleSubTitle(
                        fontWeight: FontWeight.w600,
                        fontSize: AppDimension.getSizeTextSubTitleItemProperty(context),
                        color: Theme.of(context).primaryColor
                      ),),

                      const SizedBox(width: 5,),

                      Container(
                        width: AppDimension.getSizeTextSubTitleItemProperty(context),
                        height: AppDimension.getSizeTextSubTitleItemProperty(context),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.orangeColor
                        ),
                      ),

                      const SizedBox(width: 5,),

                      Text("9 ${"Vacant".tr}",style:AppFont.textStyleSubTitle(
                        fontWeight: FontWeight.w600,
                        fontSize: AppDimension.getSizeTextSubTitleItemProperty(context),
                        color: AppColor.orangeColor
                      ),)
                    ],
                  )
                ],
              ),
            ),

            IconButton(onPressed: widget.onTapMenu, icon: Icon(Icons.more_vert_outlined,color: Theme.of(context).primaryColor,size: AppDimension.getSizeIconBottomNavigation(context),))

          ],
        ),

      ),
    );
  }


}
