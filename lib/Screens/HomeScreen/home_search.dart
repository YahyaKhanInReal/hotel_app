import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';

import '../../Components/custom_field.dart';

class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: .fromHeight(50)
          , child: CustomAppbar(
            title: "Search",
            leading: Icon(LucideIcons.move_left),
          action: Icon(LucideIcons.bell_dot,color: Colors.black,),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomFieldInput(
                  title: "Search...",
                  suffixIcon: Icon(LucideIcons.sliders_horizontal),
                  prefixIcon: Icon(LucideIcons.search)),
              SizedBox(height: 15.h,),
              ListTile(
                contentPadding: .zero,
                title: Text("Recent Searches",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold,
                  color: Appcolors.darkColor
                ),),
                trailing: Text("Clear All",style: TextStyle(
                  color: Appcolors.redColor,
                  fontSize: 12.sp
                ),),
              ),
              // SizedBox(height: 10.h,),
              ListTile(
                contentPadding: .zero,
                leading: Icon(LucideIcons.clock),
                title: Text("Golden Sends Retreat",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: .bold,
                  color: Colors.black
                ),),
                subtitle: Text("Clearwater, FL",style: TextStyle(
                  color: Appcolors.greyTwoColor,
                  fontSize: 12.sp,
                ),),
              ),
              ListTile(
                contentPadding: .zero,
                leading: Icon(LucideIcons.clock),
                title: Text("Crystal Peak Lodge",style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: .bold,
                    color: Colors.black
                ),),
                subtitle: Text("Aspen, CO",style: TextStyle(
                  color: Appcolors.greyTwoColor,
                  fontSize: 12.sp,
                ),),
              ),
              ListTile(
                contentPadding: .zero,
                leading: Icon(LucideIcons.clock),
                title: Text("Coral Bay Resort",style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: .bold,
                    color: Colors.black
                ),),
                subtitle: Text("Miami Beach, FL",style: TextStyle(
                  color: Appcolors.greyTwoColor,
                  fontSize: 12.sp,
                ),),
              ),
              SizedBox(height: 10.h,),
              ListTile(
                contentPadding: .zero,
                title: Text("Recent Viewed",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold,
                    color: Appcolors.darkColor
                ),),
                trailing: Text("See All",style: TextStyle(
                    color: Appcolors.primaryColor,
                    fontSize: 12.sp
                ),),
              ),
              Row(
                crossAxisAlignment: .start,
                children: [
                  ClipRRect(
                    borderRadius: .circular(12),
                    child: Image.asset(AppImages.onBoarding1Image,
                      height: 78.h,width: 78.w,fit: .cover,),
                  ),
                  SizedBox(width: 14.w,),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Mystic Palms",style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 16.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(LucideIcons.map_pin,color: Appcolors.greyTwoColor,size: 16.sp,),
                          Text("Honolulu, Hl",style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp
                          ),)
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Text("\$270",style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp
                          ),),
                          Text("/night",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: .end,
                      children: [
                        Image.asset(AppImages.starImage,height: 20,),
                        SizedBox(width: 5.w,),
                        Text("4.0")
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Divider(thickness: 1,),
        
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: .start,
                children: [
                  ClipRRect(
                    borderRadius: .circular(12),
                    child: Image.asset(AppImages.onBoarding3Image,
                      height: 78.h,width: 78.w,fit: .cover,),
                  ),
                  SizedBox(width: 14.w,),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Sapphire Cove Hotel",style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 16.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(LucideIcons.map_pin,color: Appcolors.greyTwoColor,size: 16.sp,),
                          Text("Honolulu, Hl",style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp
                          ),)
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Text("\$290",style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp
                          ),),
                          Text("/night",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: .end,
                      children: [
                        Image.asset(AppImages.starImage,height: 20,),
                        SizedBox(width: 5.w,),
                        Text("4.0")
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h,),
              Divider(thickness: 1,),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: .start,
                children: [
                  ClipRRect(
                    borderRadius: .circular(12),
                    child: Image.asset(AppImages.onBoarding2Image,
                      height: 78.h,width: 78.w,fit: .cover,),
                  ),
                  SizedBox(width: 14.w,),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Serenity Sands",style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 16.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(LucideIcons.map_pin,color: Appcolors.greyTwoColor,size: 16.sp,),
                          Text("Honolulu, Hl",style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp
                          ),)
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Text("\$310",style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp
                          ),),
                          Text("/night",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: .end,
                      children: [
                        Image.asset(AppImages.starImage,height: 20,),
                        SizedBox(width: 5.w,),
                        Text("4.0")
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
