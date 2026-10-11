import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  const CustomContainer({super.key,
    required this.title, this.color,this.textColor,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8
      ),
      child: Container(
        alignment: .center,
        width: 108.w,
        height: 42.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: .circular(12),
          border: .all(
            width: 0.2,
            color: Appcolors.greyTwoColor.withOpacity(0.5),
          )
        ),
        child: Text(title,style: TextStyle(color: textColor),),
      ),
    );
  }
}
