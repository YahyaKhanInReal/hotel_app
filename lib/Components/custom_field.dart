import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';

class CustomFieldInput extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const CustomFieldInput({super.key,
    required this.title,  this.suffixIcon,  this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: Text(title,style: TextStyle(
          color: Appcolors.greyTwoColor,
          fontSize: 14.sp
        ),),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: .none,
          enabledBorder: OutlineInputBorder(
              borderRadius: .circular(25),
              borderSide: BorderSide(
                color: Appcolors.greyColor,
                width: 0.4
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: .circular(25),
              borderSide: BorderSide(
                  color: Appcolors.greyColor,
                  width: 0.4
              )
          )
      ),
    );
  }
}
