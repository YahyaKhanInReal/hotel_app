import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_container.dart';
import 'package:hotel_app/Model/home_buttons_model.dart';
import 'package:hotel_app/Model/home_stacks.dart';
import 'package:hotel_app/Screens/FavoriteScreens/favorite_screen.dart';
import 'package:hotel_app/Screens/HomeScreen/hotel_details.dart';
import 'package:hotel_app/Screens/HomeScreen/map_nearby.dart';
import 'package:hotel_app/Screens/NotificationsList/notifications_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeButtonsModel> homeButtonsList = [
    HomeButtonsModel(title: "All"),
    HomeButtonsModel(title: "Villas", image: AppImages.hotelIcon),
    HomeButtonsModel(title: "Hotels", image: AppImages.hotelIcon),
    HomeButtonsModel(title: "Apartments", image: AppImages.hotelIcon),
  ];
  List<HomeStackModel> stacksList = [
    HomeStackModel(
      image: AppImages.onBoarding1Image,
      title: "The Horizon Retreat",
      subTitle: "Los Angeles , CA",
      price: "\$ 480/night",
      starImage: AppImages.starImage,
      rating: "4.5",
    ),
    HomeStackModel(
      image: AppImages.onBoarding2Image,
      title: "Opal Grove In",
      subTitle: "Los Angeles , CA",
      price: "\$ 480/night",
      starImage: AppImages.starImage,
      rating: "4.5",
    ),
    HomeStackModel(
      image: AppImages.onBoarding3Image,
      title: "The Horizon Retreat",
      subTitle: "San Diego , CA",
      price: "\$ 480/night",
      starImage: AppImages.starImage,
      rating: "4.5",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            //user profile
            Column(
              children: [
                ListTile(
                  contentPadding: .zero,
                  titleAlignment: .bottom,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AppImages.homeProfile),
                  ),
                  title: Text(
                    "Yahya Khan",
                    style: TextStyle(fontWeight: .bold, fontSize: 16.sp),
                  ),
                  subtitle: Row(
                    mainAxisSize: .min,
                    children: [
                      Icon(LucideIcons.map_pin, size: 16.sp),
                      Text("United Arab Emirates"),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: .min,
                    children: [
                      Container(
                        alignment: .center,
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: .circle,
                          border: .all(width: 0.5, color: Appcolors.greyColor),
                        ),
                        child: Icon(
                          LucideIcons.search,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationsListScreen(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: .center,
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(
                              width: 0.5,
                              color: Appcolors.greyColor,
                            ),
                          ),
                          child: Icon(
                            LucideIcons.bell,
                            size: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //CArd Second Widget
            SizedBox(height: 22.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: .infinity,
                      decoration: BoxDecoration(
                        borderRadius: .circular(12),
                        color: Color(0xffE8F2FF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          contentPadding: .zero,
                          leading: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              shape: .circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.location_on_rounded,
                              size: 24.sp,
                              color: Appcolors.primaryColor,
                            ),
                          ),
                          title: Text(
                            "You Can Change Your Location to show nearby villas",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: .zero,
                      leading: Text(
                        "Most Popular",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: .bold,
                          color: Appcolors.darkColor,
                        ),
                      ),
                      trailing: Text(
                        "See all",
                        style: TextStyle(
                          color: Appcolors.primaryColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoriteScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 206.h,
                        child: ListView.builder(
                          scrollDirection: .horizontal,
                          itemCount: stacksList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 156.w,
                              height: 206.h,
                              margin: EdgeInsets.only(right: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: .circular(12),
                              ),
                              child: ClipRRect(
                                borderRadius: .circular(12.r),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        stacksList[index].image.toString(),
                                        fit: .cover,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black87,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 15,
                                       top: 10,
                                        child:Container(
                                          alignment: .center,
                                          width: 25.w,
                                          height: 25.h,
                                          decoration: BoxDecoration(
                                            shape: .circle,
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.favorite,color: Appcolors.redColor,size: 18,),
                                        ) ),
                                    Positioned(
                                      left: 8.w,
                                      bottom: 55.h,
                                      child: Text(
                                        stacksList[index].title.toString(),
                                        style: TextStyle(
                                          color: Appcolors.whiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 8.w,
                                      bottom: 37,
                                      child: Text(
                                        stacksList[index].subTitle.toString(),
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: .bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 10.h,
                                      left: 8.w,
                                      child: Text(
                                        stacksList[index].price.toString(),
                                        style: TextStyle(
                                          fontWeight: .bold,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10.h,
                                      right: 25.w,
                                      child: Image.asset(
                                        stacksList[index].starImage.toString(),
                                        height: 14.h,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8.h,
                                      right: 5.w,
                                      child: Text(
                                        stacksList[index].rating.toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    ListTile(
                      contentPadding: .zero,
                      leading: Text(
                        "Recommended for you",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: .bold,
                          color: Appcolors.darkColor,
                        ),
                      ),
                      trailing: Text(
                        "See all",
                        style: TextStyle(
                          color: Appcolors.primaryColor,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 52.h,
                      child: ListView.builder(
                        padding: .zero,
                        itemCount: 4,
                        scrollDirection: .horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: .center,
                            width: index == 0 ? 58.w : 120.w,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Appcolors.primaryColor
                                  : Colors.transparent,
                              borderRadius: .circular(12),
                              border: .all(
                                color: Appcolors.greyColor.withOpacity(0.5),
                                width: 0.5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: .center,
                                children: [
                                  if (index != 0)
                                    Image.asset(
                                      homeButtonsList[index].image.toString(),
                                      height: 20.h,
                                    ),
                                  if (index != 0) SizedBox(width: 6.w),
                                  Text(
                                    homeButtonsList[index].title.toString(),
                                    style: TextStyle(
                                      color: index == 0
                                          ? Appcolors.whiteColor
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotelDetailsScreen(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: .start,
                        children: [
                          ClipRRect(
                            borderRadius: .circular(12),
                            child: Image.asset(
                              AppImages.onBoarding2Image,
                              height: 78.h,
                              width: 78.w,
                              fit: .cover,
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Serenity Sands",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(
                                    LucideIcons.map_pin,
                                    color: Appcolors.greyTwoColor,
                                    size: 16.sp,
                                  ),
                                  Text(
                                    "Honolulu, Hl",
                                    style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text(
                                    "\$270",
                                    style: TextStyle(
                                      color: Appcolors.primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "/night",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: .end,
                              children: [
                                Image.asset(AppImages.starImage, height: 20),
                                SizedBox(width: 5.w),
                                Text("4.0"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotelDetailsScreen(),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: .start,
                        children: [
                          ClipRRect(
                            borderRadius: .circular(12),
                            child: Image.asset(
                              AppImages.onBoarding3Image,
                              height: 78.h,
                              width: 78.w,
                              fit: .cover,
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Elysian Suites",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(
                                    LucideIcons.map_pin,
                                    color: Appcolors.greyTwoColor,
                                    size: 16.sp,
                                  ),
                                  Text(
                                    "Sandiego, CA",
                                    style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Text(
                                    "\$320",
                                    style: TextStyle(
                                      color: Appcolors.primaryColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "/night",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: .end,
                              children: [
                                Image.asset(AppImages.starImage, height: 20),
                                SizedBox(width: 5.w),
                                Text("4.0"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    ListTile(
                      contentPadding: .zero,
                      leading: Text(
                        "Hotel Near you",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: .bold,
                          color: Appcolors.darkColor,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapNearbyScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Open Map",
                          style: TextStyle(
                            color: Appcolors.primaryColor,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      AppImages.mapImage,
                      width: .infinity,
                      fit: .cover,
                    ),
                    SizedBox(height: 15.h),
                    ListTile(
                      contentPadding: .zero,
                      leading: Text(
                        "Best Today",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: .bold,
                          color: Appcolors.darkColor,
                        ),
                      ),
                      trailing: Text(
                        "See all",
                        style: TextStyle(
                          color: Appcolors.primaryColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                                    AppImages.homeCardImage,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            height: 14.h,
                                          ),

                                          SizedBox(width: 3.w),

                                          Text(
                                            "4.4",
                                            style: TextStyle(
                                              color: Colors.yellow.shade700,
                                              fontSize: 10.sp,
                                            ),
                                          ),

                                          SizedBox(width: 4.w),

                                          Text(
                                            "(532)",
                                            style: TextStyle(
                                              color: Appcolors.greyTwoColor,
                                              fontSize: 10.sp,
                                            ),
                                          ),

                                          SizedBox(width: 5.w),

                                          Flexible(
                                            child: Text(
                                              "\$120",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp,
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
                                                fontSize: 10.sp,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
