import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Languages",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: .bold,
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: .topCenter,
                child: Container(
                  width: 327.w,
                  decoration: BoxDecoration(
                    border: .all(
                      color: Appcolors.greyColor.withOpacity(0.5),
                    ),
                    borderRadius: .circular(12.sp),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: .min,
                      crossAxisAlignment: .start,
                      children: [
                        Text("Suggested Languages",style: TextStyle(
                            color: Appcolors.greyColor,
                            fontSize: 12.sp
                        ),),
                        ListTile(
                            contentPadding: .zero,
                            title: Text("English (UK)",style: TextStyle(fontSize: 16.sp,
                                fontWeight: .bold
                            ),),
                            trailing:Icon(Icons.check,color: Appcolors.primaryColor,)
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("English",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("Bahasa Indonesia",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: .topCenter,
                child: Container(
                  width: 327.w,
                  decoration: BoxDecoration(
                    border: .all(
                      color: Appcolors.greyColor.withOpacity(0.5),
                    ),
                    borderRadius: .circular(12.sp),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: .min,
                      crossAxisAlignment: .start,
                      children: [
                        Text("Other Languages",style: TextStyle(
                            color: Appcolors.greyColor,
                            fontSize: 12.sp
                        ),),
                        ListTile(
                            contentPadding: .zero,
                            title: Text("Chinese",style: TextStyle(fontSize: 16.sp,
                                fontWeight: .bold
                            ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("German",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("Czech",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("Danish",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        // SizedBox(height: 6.h,),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("Danish",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                        Divider(thickness: 1,color: Appcolors.greyColor.withOpacity(0.5),),
                        ListTile(
                          contentPadding: .zero,
                          title: Text("Danish",style: TextStyle(fontSize: 16.sp,
                              fontWeight: .bold
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
