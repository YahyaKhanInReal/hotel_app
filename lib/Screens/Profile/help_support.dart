import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Help and Support",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: .bold
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: .all(20.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Appcolors.greyColor.withOpacity(0.5)
                    ),
                    borderRadius: .circular(12.sp)
                  ),
                  prefixIcon: Icon(LucideIcons.search,color:Appcolors.greyColor ,),
                  hint: Text("Search...",style: TextStyle(
                      color: Appcolors.greyColor,
                      fontSize: 16.sp),),
                  focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Appcolors.greyColor.withOpacity(0.5)
                      ),
                      borderRadius: .circular(12.sp)
                  ),
        
                ),
              ),
              SizedBox(height: 24.h,),
              ListTile(
                contentPadding: .zero,
                title: Text("Lorem ipsum dolor sit amet",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down,
                  color: Appcolors.darkColor,),
              ),
              Divider(thickness: 1,),
              ListTile(
                contentPadding: .zero,
                title: Text("Lorem ipsum dolor sit amet",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down,
                  color: Appcolors.darkColor,),
              ),
              Divider(thickness: 1,),
              ListTile(
                contentPadding: .zero,
                title: Text("Lorem ipsum dolor sit amet",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold,
                  color: Appcolors.primaryColor
                ),),
                trailing: Icon(Icons.keyboard_arrow_up_outlined,
                  color: Appcolors.primaryColor,),
              ),
        
              Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",style: TextStyle(color: Appcolors.greyColor),),
              SizedBox(height: 10.h,),
              Divider(thickness: 1,),
              ListTile(
                contentPadding: .zero,
                title: Text("Lorem ipsum dolor sit amet",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down,
                  color: Appcolors.darkColor,),
              ),
              Divider(thickness: 1,),
              ListTile(
                contentPadding: .zero,
                title: Text("Lorem ipsum dolor sit amet",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down,
                  color: Appcolors.darkColor,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
