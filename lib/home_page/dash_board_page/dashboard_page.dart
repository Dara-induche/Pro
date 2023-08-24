import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';
import 'package:propertymanagement/widget/item_dashboard/item_transaction.dart';
import 'package:propertymanagement/widget/menu_dashboard.dart';

import '../../widget/item_dashboard/item_property.dart';

class DashBoardPage extends StatefulWidget {
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  double height = 110;

  double width = 110;

  ScrollController scrollController = ScrollController();

  bool isShowFloatingButton = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(showFloatingButton);
  }

  void showFloatingButton(){
    if(scrollController.position.extentBefore>100){
      setState(() {
        isShowFloatingButton = false;
      });
    }

    else{
      setState(() {
        isShowFloatingButton = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        child: Builder(builder: (context){

          if(isShowFloatingButton){
            return IconButton(
                onPressed: (){
                 scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(seconds: 1), curve: Curves.linear);
                },
                icon: Icon(Icons.arrow_downward_rounded,color: AppColor.whiteColor,)
            ).animate().shake();
          }

          return IconButton(
              onPressed: (){
                scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.linear);
              },
              icon: Icon(Icons.arrow_upward,color: AppColor.whiteColor,)
          ).animate().shake();
        },),
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
        },
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: AppDimension.appSpaceVertical,vertical: AppDimension.appSpaceVertical/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const SizedBox(height: AppDimension.appSpaceVertical*2,),

               //*title
               Text("Welcome Back".tr,style: AppFont.textStyleTitle(fontWeight: FontWeight.w600,color: AppColor.greyColor),),

                const SizedBox(height: AppDimension.appSpaceVertical,),

                //*menu
                Builder(
                  builder: (context) {
                    MenuDashBoard(onTapCallBack: (){},title: "",imageName: "",
                    checkItemHeight: (double h){
                    height = h;
                    },
                   checkItemWidth: (double w){
                   width  =w;
                   },
                 );
                    return SizedBox(
                      height: height*2+30,
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                         childAspectRatio: height/width
                        ),
                        children: [
                          MenuDashBoard(title: "Add Property".tr, imageName: "assets/images/add_property.png", onTapCallBack: (){}),
                          MenuDashBoard(title: "Tenants".tr, imageName: "assets/images/tenants.png", onTapCallBack: (){}),
                          MenuDashBoard(title: "Add Transaction".tr, imageName: "assets/images/add_transaction.png", onTapCallBack: (){}),
                          MenuDashBoard(title: "Add Document".tr, imageName: "assets/images/document.png", onTapCallBack: (){}),
                          MenuDashBoard(title: "Report".tr, imageName: "assets/images/report.png", onTapCallBack: (){}),
                          MenuDashBoard(title: "Add Tenants".tr, imageName: "assets/images/add_tenant.png", onTapCallBack: (){})

                        ],
                      ),
                    );
                  }
                ),

                const SizedBox(height: AppDimension.appSpaceVertical,),
                
                Container(
                  padding: const EdgeInsets.all(AppDimension.smallPadding*2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                    color: AppColor.blueColor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Property",style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.whiteColor),),
                      Text("3",style: AppFont.textStyleTitle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.whiteColor),)
                    ],
                  ),
                ),

                const SizedBox(height: AppDimension.appSpaceVertical,),

                Container(
                  padding: const EdgeInsets.all(AppDimension.smallPadding*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                      color: AppColor.primaryColor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Occupied",style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.whiteColor),),
                      Text("10",style: AppFont.textStyleTitle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.whiteColor),)
                    ],
                  ),
                ),

                const SizedBox(height: AppDimension.appSpaceVertical,),

                Container(
                  padding: const EdgeInsets.all(AppDimension.smallPadding*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppDimension.defaultRadius),
                      color: AppColor.orangeColor
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vacant",style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.whiteColor),),
                      Text("18+",style: AppFont.textStyleTitle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.whiteColor),)
                    ],
                  ),
                ),

                const SizedBox(height: AppDimension.appSpaceVertical*2,),

                Container(
                  padding: const EdgeInsets.all(AppDimension.smallPadding*2),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppDimension.defaultRadius),
                        topRight: Radius.circular(AppDimension.defaultRadius)
                      ),
                      color: AppColor.whiteColor,
                      boxShadow: kElevationToShadow[2]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Properties",style: AppFont.textStyleTitle(fontSize: 20,fontWeight: FontWeight.w600,color: AppColor.blackColor),),
                      Text("See All".tr,style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.blackColor),)
                    ],
                  ),
                ),

                const SizedBox(height: AppDimension.appSpaceVertical/2,),

                Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    boxShadow: kElevationToShadow[2]
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppDimension.smallPadding),
                  child: Column(
                    children: List.generate(5, (index){
                      if(index==4){
                        return Container(
                            margin: const EdgeInsets.only(bottom: AppDimension.appSpaceVertical),
                            child: ItemProperty(onTap: (){},onTapMenu: (){},)
                        );
                      }
                      return ItemProperty(onTap: (){},onTapMenu: (){},);
                    }),
                  ),
                ),


                const SizedBox(height: AppDimension.appSpaceVertical*2,),

                Container(
                  padding: const EdgeInsets.all(AppDimension.smallPadding*2),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppDimension.defaultRadius),
                          topRight: Radius.circular(AppDimension.defaultRadius)
                      ),
                      color: AppColor.whiteColor,
                      boxShadow: kElevationToShadow[2]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transaction History",style: AppFont.textStyleTitle(fontSize: 20,fontWeight: FontWeight.w600,color: AppColor.blackColor),),
                      Text("See All".tr,style: AppFont.textStyleTitle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColor.blackColor),)
                    ],
                  ),
                ),

                const SizedBox(height: AppDimension.appSpaceVertical/2,),

                Container(
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      boxShadow: kElevationToShadow[2]
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: AppDimension.smallPadding),
                  child: Column(
                    children: List.generate(5, (index){
                      if(index==4){
                        return Container(
                            margin: const EdgeInsets.only(bottom: AppDimension.appSpaceVertical),
                            child: ItemTransaction(onTap: (){},onTapMenu: (){},)
                        );
                      }
                      return ItemTransaction(onTap: (){},onTapMenu: (){},);
                    }),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }


}
