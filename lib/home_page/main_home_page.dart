import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:propertymanagement/app_style/app_color.dart';
import 'package:propertymanagement/app_style/app_dimension.dart';
import 'package:propertymanagement/app_style/app_font.dart';
import 'package:propertymanagement/home_page/dash_board_page/dashboard_page.dart';
import 'package:propertymanagement/home_page/profile/profile_page.dart';
import 'package:propertymanagement/widget/menu_drawer.dart';

class MainHomePage extends StatefulWidget {
  int indexBottomNavigation = 2;

  MainHomePage({required this.indexBottomNavigation});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  String title = "";

  final GlobalKey<ScaffoldState> keyScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
        appBar: AppBar(
          elevation: AppDimension.defaultElevation,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            splashRadius: AppDimension.smallPadding,
            iconSize: AppDimension.normalSizeIcon,
            onPressed: () {
              keyScaffold.currentState?.openDrawer();
            },
            icon: Image.asset('assets/icons/menu.png',color: AppColor.whiteColor,width: AppDimension.normalSizeIcon+8,height: AppDimension.normalSizeIcon+8,),
          ),
          actions: [
            IconButton(
              onPressed: (){
                setState(() {
                  widget.indexBottomNavigation  = 3;
                });
              },
              icon: Badge(
                  backgroundColor: AppColor.orangeColor,
                  label: Text("9+",style:AppFont.textStyleNormal(fontWeight: FontWeight.bold,fontSize: 8,color: AppColor.whiteColor),),
                  child: Icon(Icons.notifications_outlined,color: AppColor.whiteColor,size: AppDimension.normalSizeIcon,)
              ),
            ),
          ],
          title: Builder(
            builder: (context) {
              switch (widget.indexBottomNavigation) {
                case 0:
                  {
                    title = "Property".tr;
                    break;
                  }

                case 1:
                  {
                    title = "Profile Details".tr;
                    break;
                  }

                case 3:
                  {
                    title = "Notification".tr;
                    break;
                  }

                case 4:
                  {
                    title = "Tenants".tr;
                    break;
                  }

                default:
                  {
                    title = "Dashboard".tr;
                  }
              }
              return Text(
                title,
                style: AppFont.textStyleHeader(color: AppColor.whiteColor,fontSize: 20),
              );
            },
          ),
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: AppDimension.defaultElevation,
          shape: const RoundedRectangleBorder(
          ),
          child: Column(
            children: [
              
              //*header
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColor.primaryColor
                ),
                child: Column(
                  children: [
                    //*user profile
                    const SizedBox(
                      height: AppDimension.profileUserSize,
                      width: AppDimension.profileUserSize,
                      child: CircleAvatar(
                      backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                      ),
                    ),

                    const SizedBox(height: AppDimension.appSpaceVertical,),

                    Text("UserName",style: AppFont.textStyleHeader(color: AppColor.whiteColor,fontWeight: FontWeight.w600,fontSize: 18),),

                    const SizedBox(height: AppDimension.appSpaceVertical,)
                  ],
                ),
              ),
              
              Container(
                height: MediaQuery.of(context).size.height-175,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //first section
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            boxShadow: kElevationToShadow[1]
                        ),
                        margin:const EdgeInsets.all(AppDimension.appSpaceVertical),
                        //padding: const EdgeInsets.all(AppDimension.smallPadding),
                        child: Column(
                          children: [
                            MenuDrawer(title: "Dashboard".tr, iconsName: Icons.dashboard_outlined, onTap: (){
                              Get.back();
                              setState(() {
                                widget.indexBottomNavigation = 2;
                              });
                            }),
                            MenuDrawer(title: "Property".tr, iconsName: Icons.business_outlined, onTap: (){
                              Get.back();
                              setState(() {
                                widget.indexBottomNavigation = 0;
                              });
                            }),
                            MenuDrawer(title: "Profile".tr, iconsName: Icons.person_outline, onTap: (){
                              Get.back();
                              setState(() {
                                widget.indexBottomNavigation = 1;
                              });
                            }),
                            MenuDrawer(title: "Notification".tr, iconsName: Icons.notifications_outlined, onTap: (){
                              Get.back();
                              setState(() {
                                widget.indexBottomNavigation = 3;
                              });
                            }),
                            MenuDrawer(title: "Tenants".tr, iconsName: Icons.group_outlined, onTap: (){
                              Get.back();
                              setState(() {
                                widget.indexBottomNavigation = 4;
                              });
                            })
                          ],
                        ),
                      ),

                      //second section
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            boxShadow: kElevationToShadow[1]
                        ),
                        margin:const EdgeInsets.only(left: AppDimension.appSpaceVertical,right: AppDimension.appSpaceVertical),
                        //padding: const EdgeInsets.all(AppDimension.smallPadding),
                        child: Column(
                          children: [
                            MenuDrawer(title: "Transaction".tr, iconsName: FontAwesomeIcons.moneyBillTransfer, onTap: (){
                              Get.back();
                            }),
                            MenuDrawer(title: "Document".tr, iconsName: FontAwesomeIcons.file, onTap: (){
                              Get.back();
                            }),
                            MenuDrawer(title: "Report".tr, iconsName:FontAwesomeIcons.message, onTap: (){
                              Get.back();
                            }),
                            MenuDrawer(title: "Cash Management".tr, iconsName: FontAwesomeIcons.fileInvoice, onTap: (){
                              Get.back();
                            }),
                          ],
                        ),
                      ),

                      //Third section
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            boxShadow: kElevationToShadow[1]
                        ),
                        margin:const EdgeInsets.only(left: AppDimension.appSpaceVertical,right: AppDimension.appSpaceVertical,top: AppDimension.appSpaceVertical),
                        //padding: const EdgeInsets.all(AppDimension.smallPadding),
                        child: Column(
                          children: [
                            MenuDrawer(title: "Setting".tr, iconsName: Icons.settings_outlined, onTap: (){
                              Get.back();
                            }),
                            MenuDrawer(title: "Logout".tr, iconsName: Icons.logout_outlined, onTap: (){
                              Get.back();
                            }),
                          ],
                        ),
                      ),

                      const SizedBox(height: AppDimension.appSpaceVertical*3,)
                    ],
                  ),
                ),
              )
            ],
          ),

        ),
        body: Builder(builder: (BuildContext context){

          if(widget.indexBottomNavigation==1){
            return ProfilePage();
          }

          return DashBoardPage();
        }
        ,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.whiteColor,
            boxShadow: kElevationToShadow[2],
          ),
          padding: const EdgeInsets.all(AppDimension.smallPadding),
          child: InkWell(
            onTap: () {
              setState(() {
                widget.indexBottomNavigation = 2;
              });
            },
            child: CircleAvatar(
              backgroundColor: widget.indexBottomNavigation == 2
                  ? AppColor.primaryColor
                  : AppColor.primaryColor.withOpacity(0.5),
              child: Icon(
                Icons.qr_code,
                size: 32,
                color: AppColor.whiteColor,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.indexBottomNavigation,
          fixedColor: AppColor.primaryColor,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              widget.indexBottomNavigation = index;
            });
          },
          items:  [
            const BottomNavigationBarItem(
                icon: Icon(Icons.business_outlined), label: "Property"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
            const BottomNavigationBarItem(
                icon: Visibility(
                    visible: false, child: Icon(Icons.person_outline)),
                label: ""),
            BottomNavigationBarItem(
                icon: Badge(
                    backgroundColor: AppColor.orangeColor,
                    label: Text("9+",style: AppFont.textStyleNormal(fontWeight: FontWeight.bold,fontSize: 8,color: AppColor.whiteColor),),
                    child: const Icon(Icons.notifications)
                ),
                label: "Notification"),
            const BottomNavigationBarItem(icon: Icon(Icons.group), label: "Tenants")
          ],
        ));
  }
}
