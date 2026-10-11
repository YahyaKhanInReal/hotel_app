import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomButton({super.key,
    required this.title , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Center(
        child: Container(
          alignment: .center,
          width: .infinity,
          height: 58.h,
          decoration: BoxDecoration(
            color: Appcolors.primaryColor,
            borderRadius: .circular(12.sp)
          ),
          child: Text(title,style: TextStyle(
              color: Appcolors.whiteColor,
              fontSize: 18,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
