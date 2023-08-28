import 'package:flutter/material.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';

class MenuDashBoard extends StatefulWidget {

  final String title;
  
  final String imageName;
  
  final GestureTapCallback onTapCallBack;

  final ValueChanged<double>? checkItemHeight;

  final ValueChanged<double>? checkItemWidth;

  MenuDashBoard({required this.title,required this.imageName,required this.onTapCallBack, this.checkItemHeight, this.checkItemWidth});

  @override
  State<MenuDashBoard> createState() => _MenuDashBoardState();
}

class _MenuDashBoardState extends State<MenuDashBoard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context,BoxConstraints boxConstraints){
      if(widget.checkItemHeight!=null){
        widget.checkItemHeight!(boxConstraints.maxHeight);
      }
      if(widget.checkItemWidth!=null){
        widget.checkItemWidth!(boxConstraints.maxWidth);
      }

      return InkWell(
        onTap: widget.onTapCallBack,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal:AppDimension.appSpaceVertical),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
              border: Border.all(color: AppColor.greyColor.withOpacity(0.5),width: 0.8)
          ),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal:AppDimension.appSpaceVertical),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: AppDimension.appSpaceVertical,),

                SizedBox(
                    width: AppDimension.getIconDashBoardSize(context),
                    child: Image.asset("${widget.imageName}")
                ),
                SizedBox(height: AppDimension.appSpaceVertical,),

                Text(widget.title,textAlign: TextAlign.center,style: AppFont.textStyleSubTitle(color: AppColor.greyColor,fontWeight: FontWeight.w400,fontSize: AppDimension.getFontSizeDashBoardMenu(context)),),

                SizedBox(height: AppDimension.appSpaceVertical,)
              ],
            ),
          ),
        ),
      );
    });
  }
}
