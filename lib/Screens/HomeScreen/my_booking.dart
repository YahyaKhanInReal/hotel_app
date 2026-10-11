import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_field.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: .fromHeight(50),
          child: CustomAppbar(
              title: "My Booking",
            leading: IconButton(onPressed: (){}, icon:Icon(LucideIcons.move_left)),
            action: Icon(LucideIcons.ellipsis_vertical),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomFieldInput(title: "Search",
                prefixIcon: Icon(LucideIcons.search,
                ),
              suffixIcon: Icon(LucideIcons.sliders_horizontal),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(32),
                  color: Appcolors.greyColor.withOpacity(0.1)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Container(
                        alignment: .center,
                        width: 160.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: .circular(24),
                          color: Colors.white
                        ),
                        child: Text("Booked",style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 14.sp
                        ),),
                      ),
                      Container(
                        alignment: .center,
                        width: 160.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                            borderRadius: .circular(16),
                            // color: Appcolors.greyColor.withOpacity(0.1)
                        ),
                        child: Text("History",style: TextStyle(
                            fontWeight: .bold,
                            fontSize: 14.sp
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(16),
                  border: .all(
                    width: 0.5,
                    color: Appcolors.greyColor
                  ),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          AppImages.onBoarding2Image,
                          height: 152.h,
                          width: 96.w,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "The Aston Vill Hotel",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Image.asset(
                                  AppImages.starImage,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  "4.0",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),

                            SizedBox(height: 5.h),

                            Row(
                              children: [
                                Icon(
                                  LucideIcons.map_pin,
                                  size: 16.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 5.w),
                                Expanded(
                                  child: Text(
                                    "Veum Point, Michikoton",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 6.h),

                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "\$270",
                                    style: TextStyle(
                                      color: Appcolors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(text: "/night"),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Divider(),
                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Dates", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "12 - 14 Nov 2024",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Guest", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "2 Guests (1 Room)",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(16),
                  border: .all(
                      width: 0.5,
                      color: Appcolors.greyColor
                  ),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          AppImages.onBoarding4,
                          height: 152.h,
                          width: 96.w,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Mystic Palms",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Image.asset(
                                  AppImages.starImage,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  "4.7",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),

                            SizedBox(height: 5.h),

                            Row(
                              children: [
                                Icon(
                                  LucideIcons.map_pin,
                                  size: 16.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 5.w),
                                Expanded(
                                  child: Text(
                                    "Palm Springs, CA",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 6.h),

                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "\$190",
                                    style: TextStyle(
                                      color: Appcolors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(text: "/night"),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Divider(),
                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Dates", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "23 - 25 Nov 2024",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Guest", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "2 Guests (1 Room)",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(16),
                  border: .all(
                      width: 0.5,
                      color: Appcolors.greyColor
                  ),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          AppImages.onBoarding3Image,
                          height: 152.h,
                          width: 96.w,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Elysian Suites",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Image.asset(
                                  AppImages.starImage,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  "3.8",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),

                            SizedBox(height: 5.h),

                            Row(
                              children: [
                                Icon(
                                  LucideIcons.map_pin,
                                  size: 16.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 5.w),
                                Expanded(
                                  child: Text(
                                    "Veum Point, Michikoton",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 6.h),

                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "\$120",
                                    style: TextStyle(
                                      color: Appcolors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(text: "/night"),
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Divider(),
                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Dates", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "12 - 14 Nov 2024",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8.h),

                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  size: 18.sp,
                                  color: Appcolors.greyTwoColor,
                                ),
                                SizedBox(width: 10.w),
                                Text("Guest", style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600)),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: Text(
                                    "2 Guests (1 Room)",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
