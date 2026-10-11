import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_button.dart';

class NotificationsListScreen extends StatefulWidget {
  const NotificationsListScreen({super.key});

  @override
  State<NotificationsListScreen> createState() =>
      _NotificationsListScreenState();
}

class _NotificationsListScreenState extends State<NotificationsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: .fromHeight(50),
          child: CustomAppbar(
              title: "Notifications",
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
            action: IconButton(
              onPressed: (){
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    bool isChecked = false;
                    return StatefulBuilder(
                        builder: (context , setModelState){
                          return Container(
                            width: .infinity,
                            decoration: BoxDecoration(
                              borderRadius: .circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: .min,
                                children: [
                                  SizedBox(height: 15.h),
                                  Text(
                                    "Filter By",
                                    style: TextStyle(fontWeight: .bold, fontSize: 18),
                                  ),
                                  SizedBox(height: 20.h,),
                                  ListTile(
                                    leading: Text(
                                      "New Notification",
                                      style: TextStyle(fontSize: 14.sp,color: Appcolors.greyTwoColor),
                                    ),
                                    trailing: Checkbox(
                                      activeColor: Appcolors.primaryColor,
                                      value: isChecked,
                                      onChanged: (val) {
                                        setModelState(() {
                                          isChecked = val!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      "By Chat",
                                      style: TextStyle(fontSize: 14.sp,color: Appcolors.greyTwoColor),
                                    ),
                                    trailing: Checkbox(
                                      activeColor: Appcolors.primaryColor,
                                      value: isChecked,
                                      onChanged: (val) {
                                        setModelState(() {
                                          isChecked = val!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      "Longest",
                                      style: TextStyle(fontSize: 14.sp,color: Appcolors.greyTwoColor),
                                    ),
                                    trailing: Checkbox(
                                      activeColor: Appcolors.primaryColor,
                                      value: isChecked,
                                      onChanged: (val) {
                                        setModelState(() {
                                          isChecked = val!;
                                        });
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      "Discounts",
                                      style: TextStyle(fontSize: 14.sp,color: Appcolors.greyTwoColor.withOpacity(0.5)),
                                    ),
                                    trailing: Checkbox(
                                      activeColor: Appcolors.primaryColor,
                                      value: isChecked,
                                      onChanged: (val) {
                                        setModelState(() {
                                          isChecked = val!;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 20.h,),
                                  CustomButton(title: "Apply", onPressed: (){}),
                                  SizedBox(height: 20.h,),
                                ],
                              ),
                            ),
                          );}
                    );
                  },
                );
              },

              icon:Icon(Icons.filter_list_rounded),color: Appcolors.darkColor,),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
              ),
              SizedBox(height: 20.h),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: Image.asset(AppImages.profileImage),
                title: Text(
                  "Hotel Eliminate Galian has added new accommodation rooms",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 10),
                child: Divider(
                  color: Appcolors.greyTwoColor.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: ClipOval(
                  child: Image.asset(
                    AppImages.profile2Image,
                    // width: 40.w,
                    // height: 40.w,
                    fit: .contain,
                  ),
                ),
                title: Text(
                  "20% discount if you stay on Saturday 27 November 2024 at Cerulean Hotel",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 10),
                child: Divider(
                  color: Appcolors.greyTwoColor.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: ClipOval(
                  child: Image.asset(
                    AppImages.congratsImage,
                    width: 40.w,
                    height: 40.w,
                    fit: .cover,
                  ),
                ),
                title: Text(
                  "Congratulations, you have successfully booked a room at Jade Gem Resort",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Yesterday",
                style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
              ),
              SizedBox(height: 20.h),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: Image.asset(AppImages.profileImage),
                title: Text(
                  "Hotel Eliminate Galian has added new accommodation rooms",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 10),
                child: Divider(
                  color: Appcolors.greyTwoColor.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: ClipOval(child: Image.asset(AppImages.profile3Image)),
                title: Text(
                  "20% discount if you stay on Saturday 27 November 2024 at Cerulean Hotel",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 10),
                child: Divider(
                  color: Appcolors.greyTwoColor.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              ListTile(
                // minLeadingWidth: 50.w,
                titleAlignment: ListTileTitleAlignment.top,
                contentPadding: .zero,
                leading: ClipOval(
                  child: Image.asset(
                    AppImages.congratsImage,
                    width: 40.w,
                    height: 40.w,
                    fit: .fitHeight,
                  ),
                ),
                title: Text(
                  "Congratulations, you have successfully booked a room at Jade Gem Resort",
                  style: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Appcolors.greyTwoColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
