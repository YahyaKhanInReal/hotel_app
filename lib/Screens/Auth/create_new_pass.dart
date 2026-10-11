import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/Auth/sign_in.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Text("Create a \n New Password",
                textAlign: .center,
                style: TextStyle(
                  color: Appcolors.darkColor,
                  fontWeight: .w900,
                  fontSize: 24.sp
              ),),
              SizedBox(height: 12.h,),
              Text("Enter your new Password",style: TextStyle(
                  fontSize: 16.sp,
                  color:Color(0xff434E58)
              ),),
              SizedBox(height: 30.h,),
              Align(
                alignment: .topStart,
                child: Text("New Password",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor
                ),),
              ),
              SizedBox(height: 10.h,),
              TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_sharp),
                      hint: Text("Enter new password",
                        style: TextStyle(color: Appcolors.greyColor,fontWeight: FontWeight.w600),),
                      fillColor: Appcolors.greyColor.withOpacity(0.1),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: .none,
                          borderRadius: .circular(12)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: .none
                      )
                  )
              ),
              SizedBox(height: 24.h,),
              Align(
                alignment: .topStart,
                child: Text("Confirm Password",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor
                ),),
              ),
              SizedBox(height: 10.h,),
              TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off_sharp),
                      hint: Text("Confirm your password",
                        style: TextStyle(color: Appcolors.greyColor,fontWeight: FontWeight.w600),),
                      fillColor: Appcolors.greyColor.withOpacity(0.1),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: .none,
                          borderRadius: .circular(12)
                      )
                  )
              ),
              SizedBox(height: 40.h,),
              CustomButton(title: "Next", onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>SignInScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
