import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final Widget? action;
  final Widget? leading;
  const CustomAppbar({super.key,
    required this.title, this.action, this.leading});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: .fromHeight(50),
      child: AppBar(
        title:Text(title,style: TextStyle(
          fontSize: 18.sp,
          fontWeight: .bold
        ),) ,
        leading: leading,
         centerTitle: true,
        actions: [?action,
          SizedBox(width: 15.w,)
        ],
      ),
    );
  }
}
