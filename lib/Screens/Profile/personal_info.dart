import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Personal Info",
          style: TextStyle(fontSize: 18.sp, fontWeight: .bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(LucideIcons.move_left, size: 24.h),
        ),
        actions: [
          Image.asset(AppImages.writeIcon, height: 24.h),
          SizedBox(width: 15.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: .topStart,
                child: Text(
                  "First Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  hint: Text(
                    "Gustavo",
                    style: TextStyle(color: Appcolors.greyTwoColor),
                  ),
                  fillColor: Appcolors.greyColor.withOpacity(0.2),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: .none),
                ),
              ),
              SizedBox(height: 24.h),

              Align(
                alignment: .topStart,
                child: Text(
                  "Last Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  hint: Text(
                    "Lipshutz",
                    style: TextStyle(color: Appcolors.greyTwoColor),
                  ),
                  fillColor: Appcolors.greyColor.withOpacity(0.2),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: .none),
                ),
              ),
              SizedBox(height: 24.h),

              Align(
                alignment: .topStart,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  hint: Text(
                    "gustavolipshutz@gmail.com",
                    style: TextStyle(color: Appcolors.greyTwoColor),
                  ),
                  fillColor: Appcolors.greyColor.withOpacity(0.2),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: .none),
                ),
              ),
              SizedBox(height: 24.h),

              Align(
                alignment: .topStart,
                child: Text(
                  "Phone",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  hint: Text(
                    "+1 90878686",
                    style: TextStyle(color: Appcolors.greyTwoColor),
                  ),
                  fillColor: Appcolors.greyColor.withOpacity(0.2),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: .none,
                    borderRadius: .circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: .none),
                ),
              ),
              SizedBox(height: 50.h),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    alignment: .center,
                    width: 327.w,
                    height: 58.h,
                    decoration: BoxDecoration(
                      color: Color(0xffECF1F6),
                      borderRadius: .circular(12.sp),
                    ),
                    child: Text(
                      "Save Changes",
                      style: TextStyle(
                        color: Appcolors.greyTwoColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
