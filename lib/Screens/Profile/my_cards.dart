import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';

class BankCardsScreen extends StatelessWidget {
  const BankCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
        title: Text(
          "Your Card",
          style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(AppImages.creditCardImage),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Image.asset(AppImages.checkIcon, height: 24.h),
                SizedBox(width: 10.w,),
                Text(
                  "Use as default payment method",
                  style: TextStyle(color: Appcolors.greyColor),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Image.asset(AppImages.masterCardImage),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Image.asset(AppImages.checkIcon, height: 24.h),
                SizedBox(width: 10.w,),
                Text(
                  "Use as default payment method",
                  style: TextStyle(color: Appcolors.greyColor),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Appcolors.primaryColor,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
