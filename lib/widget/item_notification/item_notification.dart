import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';

class ItemNotification extends StatefulWidget {

  final bool isEndItem;
  final GestureTapCallback onTap;
  ItemNotification({required this.isEndItem,required this.onTap});

  @override
  State<ItemNotification> createState() => _ItemNotificationState();
}

class _ItemNotificationState extends State<ItemNotification> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Row(
            children: [

              const SizedBox(width: AppDimension.appSpaceVertical,),

              Container(
                padding: const EdgeInsets.all(AppDimension.appSpaceVertical),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.notifications,color: AppColor.whiteColor,size: AppDimension.getSizeIconNotificationItem(context),),
              ),

              const SizedBox(width: AppDimension.appSpaceVertical,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Item delivered",
                      style: AppFont.textStyleHeader(fontSize: AppDimension.getTextSizeHeaderItemNotification(context),fontWeight: FontWeight.w600),
                      maxLines: 1,
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical/2,),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: AppFont.textStyleHeader(fontSize: AppDimension.getTextSizeSubtitleItemNotification(context),fontWeight: FontWeight.w400),
                      maxLines: MediaQuery.of(context).size.width>720?6:3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppDimension.appSpaceVertical/2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10 minutes ago",style: AppFont.textStyleTitle(fontWeight: FontWeight.w400,fontSize: AppDimension.getTextSizeTimeItemNotification(context),color: AppColor.primaryColor),),
                        const SizedBox(width: AppDimension.appSpaceVertical/2,),
                        Text("26 Aug,2023 06:17 Am",style: AppFont.textStyleTitle(fontWeight: FontWeight.w400,fontSize: AppDimension.getTextSizeTimeItemNotification(context),color: AppColor.primaryColor),)
                      ],
                    )
                  ],
                ),
              )

            ],
          ),

          Builder(builder: (BuildContext context){

            if(widget.isEndItem){
              return SizedBox();
            }

            return Container(
              margin: const EdgeInsets.symmetric(vertical: AppDimension.appSpaceVertical),
              height: MediaQuery.of(context).size.width>720?1:0.8,
              color: AppColor.primaryColor,
              width: MediaQuery.of(context).size.width*0.9,
            );
          })
        ],
      ),
    );
  }
}
