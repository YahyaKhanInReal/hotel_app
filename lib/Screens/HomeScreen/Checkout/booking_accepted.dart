import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Screens/BottomNavigationBar/bottombar.dart';
import 'package:hotel_app/Screens/HomeScreen/home_screen.dart';

class BookingAcceptedScreen extends StatelessWidget {
  const BookingAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>BottomBarScreen()));
            },
            icon:Icon(LucideIcons.move_left,color: Colors.black,)),
        actions: [
          Icon(LucideIcons.ellipsis_vertical,color: Colors.black,),
          SizedBox(width: 15.w,)
        ],
      ),
      body: Column(
        children: [
          Image.asset(AppImages.bookingAccepted),
          Text("Payment Complete",style: TextStyle(
            color: Colors.black,
            fontWeight: .bold,
            fontSize: 24.sp
          ),),
          SizedBox(height: 8.h,),
          Text("Etiam cras nec metus laoreet. Faucibus\n iaculis cras ut posuere.",style: TextStyle(
            color: Appcolors.greyTwoColor,
            fontSize: 14.sp
          ),
          textAlign: .center,
          )
        ],
      ),
    );
  }
}
