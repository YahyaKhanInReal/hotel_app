import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/checkout.dart';
import 'package:hotel_app/Screens/HomeScreen/all_facilities.dart';
import 'package:hotel_app/Screens/HomeScreen/request_booking.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        AppImages.signInImage,
                        height: 297.h,
                        width: .infinity,
                        fit: .cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 35,
                          horizontal: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          crossAxisAlignment: .center,
                          children: [
                            Container(
                              width: 44.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                color: Appcolors.whiteColor.withOpacity(0.3),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  icon : Icon(LucideIcons.move_left), color: Colors.white),
                            ),
                            Text(
                              "Nearby Hotel",
                              style: TextStyle(
                                fontWeight: .bold,
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            Icon(LucideIcons.ellipsis_vertical, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        ListTile(
                          contentPadding: .zero,
                          title: Text(
                            "The Aston Vill Hotel",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: .bold,
                              color: Appcolors.darkColor,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Appcolors.primaryColor,
                                size: 16,
                              ),
                              Text(
                                "Veum Point, Michikoton",
                                style: TextStyle(
                                  color: Appcolors.greyTwoColor,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Image.asset(AppImages.starImage, height: 16.h),
                              SizedBox(width: 4.w),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          trailing: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: Color(0xffE8F2FF),
                            ),
                            child: Image.asset(
                              AppImages.threeDRotate,
                              height: 20.h,
                              width: 20.w,
                              fit: .cover,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: .zero,
                          title: Text(
                            "Common Facilities",
                            style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
                          ),
                          trailing: TextButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AllFacilitiesScreen()));
                            },
                           child: Text("See All",
                            style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontSize: 12.sp,
                            ),)
                          ),
                        ),
            
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          crossAxisAlignment: .start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: .center,
                                  width: 56.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: Color(0xffE8F2FF),
                                  ),
                                  child: Icon(LucideIcons.wind),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "Ac",
                                  style: TextStyle(
                                    color: Appcolors.greyTwoColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: .center,
                                  width: 56.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: Color(0xffE8F2FF),
                                  ),
                                  child: Icon(LucideIcons.store),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "Restaurant",
                                  style: TextStyle(
                                    color: Appcolors.greyTwoColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: .center,
                                  width: 56.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: Color(0xffE8F2FF),
                                  ),
                                  child: Icon(LucideIcons.waves_horizontal),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "Swimming \n Pool",
                                  textAlign: .center,
                                  style: TextStyle(
                                    color: Appcolors.greyTwoColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: .center,
                                  width: 56.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: Color(0xffE8F2FF),
                                  ),
                                  child: Icon(Icons.timer_outlined),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "24-Hours \n Front Desk",
                                  textAlign: .center,
                                  style: TextStyle(
                                    color: Appcolors.greyTwoColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RichText(
                          text: TextSpan(
                            text: "The ideal place for those looking for a luxurious and tranquil holiday experience with stunning sea views.....",
                            style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontSize: 14.sp,
                            ),
                            children: [
                              TextSpan(
                                text: "Read More",
                                style: TextStyle(
                                  color: Appcolors.primaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        ListTile(
                          contentPadding: .zero,
                          title: Text(
                            "Location",
                            style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
                          ),
                          trailing: Text(
                            "OpenMap",
                            style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
            
                        Container(
                          width: .infinity,
                          decoration: BoxDecoration(
                            borderRadius: .circular(12),
                            border: .all(width: 0.5, color: Appcolors.greyTwoColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(AppImages.detailMap),
                                SizedBox(height: 6.h),
                                Row(
                                  mainAxisAlignment: .center,
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      size: 24,
                                      color: Appcolors.primaryColor,
                                    ),
                                    Text(
                                      "9175 Chestnut StreetRome, NY 13440",
                                      style: TextStyle(
                                        color: Appcolors.greyTwoColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        ListTile(
                          contentPadding: .zero,
                          title: Text(
                            "Reviews",
                            style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
                          ),
                          trailing: Text(
                            "See All",
                            style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
            
                        ListTile(
                          contentPadding: .zero,
                          titleAlignment: ListTileTitleAlignment.top,
                          leading: CircleAvatar(
                            maxRadius: 22,
                            backgroundImage: AssetImage(AppImages.reviewProfile),
                          ),
                          title: Text(
                            "Kim Borddy",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: .bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          subtitle: Text(
                            "Amazing!  The room is good than the picture. Thanks for amazing experience!",
                            style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontSize: 12.sp,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: .min,
                            children: [
                              Image.asset(AppImages.starImage, height: 16),
                              SizedBox(width: 5.w),
                              Text("4.5", style: TextStyle(fontWeight: .bold)),
                            ],
                          ),
                        ),
                        ListTile(
                          contentPadding: .zero,
                          titleAlignment: ListTileTitleAlignment.top,
                          leading: CircleAvatar(
                            maxRadius: 22,
                            backgroundImage: AssetImage(AppImages.reviewProfile2),
                          ),
                          title: Text(
                            "Mirai Kamazuki",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: .bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          subtitle: Text(
                            "The service is on point, and I really like the facilities. Good job!",
                            style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontSize: 12.sp,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: .min,
                            children: [
                              Image.asset(AppImages.starImage, height: 16),
                              SizedBox(width: 5.w),
                              Text("5.0", style: TextStyle(fontWeight: .bold)),
                            ],
                          ),
                        ),
            
                        ListTile(
                          contentPadding: .zero,
                          title: Text(
                            "Recommendation",
                            style: TextStyle(fontSize: 16.sp, fontWeight: .bold),
                          ),
                          trailing: Text(
                            "See All",
                            style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 105.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 296.w,
                                margin: EdgeInsets.symmetric(horizontal: 8.w),
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.h,
                                  horizontal: 8.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Appcolors.greyTwoColor,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    // IMAGE
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.r),
                                      child: Image.asset(
                                        AppImages.onBoarding4,
                                        width: 74.w,
                                        height: 75.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
            
                                    SizedBox(width: 10.w),
            
                                    // TEXT AREA
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tranquil Shores",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Appcolors.darkColor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
            
                                          SizedBox(height: 4.h),
            
                                          Row(
                                            children: [
                                              Icon(
                                                LucideIcons.map_pin,
                                                color: Appcolors.greyTwoColor,
                                                size: 16.sp,
                                              ),
            
                                              SizedBox(width: 3.w),
            
                                              Expanded(
                                                child: Text(
                                                  "San Diego, CA",
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Appcolors.greyTwoColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
            
                                          SizedBox(height: 4.h),
            
                                          // PRICE/RATING ROW
                                          Row(
                                            children: [
                                              Image.asset(
                                                AppImages.starImage,
                                                height: 16.h,
                                              ),
            
                                              SizedBox(width: 3.w),
            
                                              Text(
                                                "4.4",
                                                style: TextStyle(
                                                  color: Colors.yellow.shade700,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
            
                                              SizedBox(width: 4.w),
            
                                              Text(
                                                "(532)",
                                                style: TextStyle(
                                                  color: Appcolors.greyTwoColor,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
            
                                              SizedBox(width: 5.w),
            
                                              Flexible(
                                                child: Text(
                                                  "\$120",
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                              ),
            
                                              SizedBox(width: 4.w),
            
                                              Flexible(
                                                child: Text(
                                                  "\$199",
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Appcolors.redColor,
                                                    decoration:
                                                    TextDecoration.lineThrough,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 15.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
            
                ],
              ),
            ),
          ),

          Container(
            width: .infinity,
            decoration: BoxDecoration(
              color:Appcolors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: .circular(20),
                topRight: .circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Appcolors.greyTwoColor,
                        ),
                      ),
                      Text(
                        "\$120.00",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> RequestToBookScreen()));
                    },
                    child: Center(
                      child: Container(
                        alignment: .center,
                        width: 160.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          color: Appcolors.primaryColor,
                          borderRadius: .circular(12.sp),
                        ),
                        child: Text(
                          "Booking Now",
                          style: TextStyle(
                            color: Appcolors.whiteColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )

    );
  }
}
