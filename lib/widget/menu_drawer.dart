import 'package:flutter/material.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';

class MenuDrawer extends StatefulWidget {
  final String title;

  final IconData iconsName;

  final GestureTapCallback onTap;

  MenuDrawer({required this.title,required this.iconsName,required this.onTap});
  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      splashColor: AppColor.orangeColor,
      leading: Icon(widget.iconsName,color: AppColor.greyColor,size: AppDimension.getSizeIconDrawer(context),),
      title: Text(
        widget.title,style: AppFont.textStyleTitle(fontSize: AppDimension.getTextSizeDrawer(context),fontWeight: FontWeight.w400,color: AppColor.greyColor),
      ),
    );
  }
}
