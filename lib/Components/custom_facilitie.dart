import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';

class CustomFacilities extends StatelessWidget {
  final Widget leadingIcon;
  final String title;
  final String count;
  final Widget trailingIcon;
  const CustomFacilities({super.key,
    required this.leadingIcon,
    required this.title,
    required this.count,
    required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 56.h,
      alignment: .center,
      margin: EdgeInsets.symmetric(
        vertical: 8
      ),
      decoration: BoxDecoration(
        borderRadius: .circular(12),
        color: Color(0xffF8FCF8)
      ),
      child: ListTile(
        leading:leadingIcon,
        title: Row(
          children: [
            Text(title,style: TextStyle(
              fontSize: 16.sp,
              fontWeight: .bold
            ),),
            SizedBox(width: 5.w,),
            Text(count,style: TextStyle(
              fontSize: 12.sp,
              color: Appcolors.greyTwoColor
            ),),
          ],
        ),
        trailing: trailingIcon,
      ),
    );
  }
}
