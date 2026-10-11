import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/BottomNavigationBar/bottombar.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(LucideIcons.move_left,size: 24.h,)),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Text(
                "Enter OTP",
                style: TextStyle(
                  color: Appcolors.darkColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "We have just sent you 4 digit code via your email",
                style: TextStyle(color: Appcolors.greyColor),
              ),
              Text("example@gmail.com"),
              SizedBox(height: 30.h),
              Pinput(
                mainAxisAlignment: .center,
                length: 4,
                defaultPinTheme: PinTheme(
                  width: 56.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: Appcolors.greyColor.withOpacity(0.2),
                    borderRadius: .circular(25.sp),
                  ),
                  textStyle: TextStyle(
                    color: Appcolors.greyColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 56.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: Appcolors.greyColor.withOpacity(0.2),
                    borderRadius: .circular(25.sp),
                    border: .all(
                      width: 1,
                      color: Appcolors.primaryColor,
                    ),

                  ),
                  textStyle: TextStyle(
                    color: Appcolors.darkColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                  )
                ),
              ),
              SizedBox(height: 40.h,),
              CustomButton(title: "Continue", onPressed: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>BottomBarScreen()));
              }),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text("Didn't receive code?",style: TextStyle(
                      color: Appcolors.greyColor,
                      fontSize: 16.sp,
                      fontWeight: .w900
                  ),),
                  Text(" Resend Code",style: TextStyle(
                      color: Appcolors.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: .w900
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
