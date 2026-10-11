import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Screens/Auth/sign_in.dart';
import 'package:hotel_app/Screens/Profile/help_support.dart';
import 'package:hotel_app/Screens/Profile/languages.dart';
import 'package:hotel_app/Screens/Profile/my_cards.dart';
import 'package:hotel_app/Screens/Profile/notifications.dart';
import 'package:hotel_app/Screens/Profile/personal_info.dart';
import 'package:hotel_app/Screens/Profile/security_switch.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PersonalInfoScreen())
                  );
                },
                child: ListTile(
                  contentPadding: .zero,
                  leading: Image.asset(AppImages.profileImage,width: 56.w,height: 56.h,),
                  title: Text("Brooklyn Simmons",style: TextStyle(
                      color: Appcolors.darkColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900
                  ),),
                  subtitle: Text("@Broklyn",style: TextStyle(
                    color: Appcolors.greyColor
                  ),),
                  trailing: Image.asset(AppImages.writeIcon,height: 24.h,),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Settings",style: TextStyle(
                  color: Appcolors.greyColor,
                  fontSize: 18.sp,
                  fontWeight: .bold
                ),),
              ),
              SizedBox(height: 15.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BankCardsScreen()));
                },
                child: ListTile(
                  leading: Image.asset(AppImages.workIcon,height: 24.h,),
                  title: Text("Your Card",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: .bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 10,top: 10,bottom: 10),
                child: Divider(thickness: 2,color: Color(0xffE9EBED),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecuritySwitchScreen()));
                },
                child: ListTile(
                  leading: Image.asset(AppImages.shieldIcon,height: 24.h,),
                  title: Text("Security",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: .bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 10,top: 10,bottom: 10),
                child: Divider(thickness: 2,color: Color(0xffE9EBED),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> NotificationsScreen()));
                },
                child: ListTile(
                  leading: Image.asset(AppImages.notificationIcon,height: 24.h,),
                  title: Text("Notification",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: .bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 10,top: 10,bottom: 10),
                child: Divider(thickness: 2,color: Color(0xffE9EBED),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> LanguagesScreen()));
                },
                child: ListTile(
                  leading: Image.asset(AppImages.internetIcon,height: 24.h,),
                  title: Text("Languages",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: .bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 10,top: 10,bottom: 10),
                child: Divider(thickness: 2,color: Color(0xffE9EBED),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> HelpSupportScreen()));
                },
                child: ListTile(
                  leading: Image.asset(AppImages.helpIcon,height: 24.h,),
                  title: Text("Help & Support",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: .bold
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 10,top: 5,bottom: 5),
                child: Divider(thickness: 2,color: Color(0xffE9EBED),),
              ),
              SizedBox(height: 15.h,),
              Center(
                child: TextButton(onPressed: (){
                  showDialog(context: context,
                      barrierDismissible: true,
                      builder:(BuildContext context){
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AlertDialog(
                            alignment: .center,
                            icon:Image.asset(AppImages.questionMarkImage,width: 101.w,height: 101.h,),
                            title: Column(
                              children: [
                                Text("Are You Sure?",style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Appcolors.darkColor,
                                    fontWeight: FontWeight.w900
                                ),),
                                SizedBox(height: 10.h,),
                                Text("Do you want to logout?",style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Appcolors.greyColor,
                                ),),
                                SizedBox(height: 15.h,)
                              ],
                            ),
                            actions: [
                              Row(
                                mainAxisSize: .min,
                                children: [
                                  Container(
                                    alignment: .center,
                                    width: 100.w,
                                    height: 46.h,
                                    decoration: BoxDecoration(
                                      border: .all(
                                        color: Appcolors.redColor,
                                      ),
                                      borderRadius: .circular(8),
                                    ),
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context)=>SignInScreen()));
                                        },
                                        child: Text("Logout",style: TextStyle(
                                      color: Appcolors.redColor
                                    ),)),
                                  ),
                                  SizedBox(width: 8.w,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: .center,
                                      width: 100.w,
                                      height: 46.h,
                                      decoration: BoxDecoration(
                                        color: Appcolors.primaryColor,
                                        borderRadius: .circular(8),
                                      ),
                                      child: Text("Cancel",style: TextStyle(
                                          color: Appcolors.whiteColor
                                      ),),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      });
                }, child: Text("Logout",style: TextStyle(
                  color: Appcolors.redColor,
                  fontSize: 16,
                  fontWeight: .bold

                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
