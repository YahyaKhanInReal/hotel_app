import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/Screens/Auth/create_new_pass.dart';
import 'package:hotel_app/Screens/Auth/forgot_password.dart';
import 'package:hotel_app/Screens/Auth/otp.dart';
import 'package:hotel_app/Screens/Auth/sign_in.dart';
import 'package:hotel_app/Screens/Auth/signup.dart';
import 'package:hotel_app/Screens/BottomNavigationBar/bottombar.dart';
import 'package:hotel_app/Screens/FavoriteScreens/favorite_screen.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/add_new_card.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/booking_accepted.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/checkout.dart';
import 'package:hotel_app/Screens/HomeScreen/all_facilities.dart';
import 'package:hotel_app/Screens/HomeScreen/home_screen.dart';
import 'package:hotel_app/Screens/HomeScreen/home_search.dart';
import 'package:hotel_app/Screens/HomeScreen/hotel_details.dart';
import 'package:hotel_app/Screens/HomeScreen/map_nearby.dart';
import 'package:hotel_app/Screens/HomeScreen/my_booking.dart';
import 'package:hotel_app/Screens/HomeScreen/request_booking.dart';
import 'package:hotel_app/Screens/HomeScreen/search_found.dart';
import 'package:hotel_app/Screens/HomeScreen/share_service/share_service.dart';
import 'package:hotel_app/Screens/NotificationsList/notifications_list.dart';
import 'package:hotel_app/Screens/Profile/help_support.dart';
import 'package:hotel_app/Screens/Profile/languages.dart';
import 'package:hotel_app/Screens/Profile/my_cards.dart';
import 'package:hotel_app/Screens/Profile/notifications.dart';
import 'package:hotel_app/Screens/Profile/personal_info.dart';
import 'package:hotel_app/Screens/Profile/privacy.dart';
import 'package:hotel_app/Screens/Profile/profile.dart';
import 'package:hotel_app/Screens/Profile/security_switch.dart';
import 'package:hotel_app/Screens/SplashScreens/splash_screen.dart';
import 'package:hotel_app/Screens/onBoarding/onboarding.dart';

void main() {
  DevicePreview.enable(enabled: kDebugMode);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          // fontFamily: 'PlusJakartaSans',
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}


