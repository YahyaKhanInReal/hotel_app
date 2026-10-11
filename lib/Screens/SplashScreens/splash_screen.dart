import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/HomeScreen/home_screen.dart';
import 'package:hotel_app/Screens/onBoarding/onboarding.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset(AppImages.splashImage,width: 89.w,height: 123.h,),
            Text("Grand Hotel",style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w900,
              color: Appcolors.whiteColor
            ),),
            Text("Find Your Perfect Stay, Anytime, Anywhere",style: TextStyle(
              color: Appcolors.whiteColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400
            ),),
          ],
        ),
      ),
    );
  }
}
