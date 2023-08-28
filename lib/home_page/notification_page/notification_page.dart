import 'package:flutter/material.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/widget/item_notification/item_notification.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: ()async{

        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.all(AppDimension.appSpaceVertical),
            padding: const EdgeInsets.all(AppDimension.appSpaceVertical),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColor.whiteColor
            ),

            child: Column(
              children: List.generate(5, (int index) {

                if(index==4){
                  return ItemNotification(isEndItem: true,onTap: (){

                  },);
                }

                return ItemNotification(isEndItem: false,onTap: (){

                });
              }),
            ),
          ),
        ),
      ),
    );
  }
}
