import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/Auth/forgot_password.dart';
import 'package:hotel_app/Screens/Auth/otp.dart';
import 'package:hotel_app/Screens/Auth/signup.dart';
import '';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          foregroundColor: Appcolors.whiteColor,
          backgroundColor: Appcolors.primaryColor,
          leading: IconButton(onPressed: (){}, icon: Icon(LucideIcons.move_left,size: 24.h,)),
          title: Text("Grand Hotel",style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
          ),),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Image.asset(AppImages.signInImage,
              height: 240.h,width: .infinity,fit: .cover,),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Let's Sign you in",style: TextStyle(
                color: Appcolors.darkColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700
              ),),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Email Address",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Appcolors.darkColor
                  ),),
                  SizedBox(height: 10.h,),
                  TextFormField(
                      decoration: InputDecoration(
                        hint: Text("Enter your email address",
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
                  SizedBox(height: 15.h,),
                  //Password
                  Text("Password",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Appcolors.darkColor,
        
                  ),),
                  SizedBox(height: 10.h,),
                  TextFormField(
                    
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_rounded,color: Appcolors.darkColor,),
                          hint: Text("Enter your password",
                            style: TextStyle(color: Appcolors.greyColor,fontWeight: FontWeight.w600),),
                          fillColor: Appcolors.greyColor.withOpacity(0.1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: .none,
                              borderRadius: .circular(12)
                          )
                      )
                  ),
                  SizedBox(height: 8.h,),
                  Align(
                    alignment: .centerEnd,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
                      },
                      child: Text("Forgot Password",style: TextStyle(
                      color: Appcolors.redColor
                    )),),
                  ),
                  SizedBox(height: 15.h,),
                  CustomButton(title: "Sign In", onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>OtpScreen()));
                  }),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(
                          color: Appcolors.greyColor,
                          fontSize: 16.sp,
                          fontWeight: .w900
                      ),),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> SignUpScreen()));
                        },
                        child: Text("Sign Up",style: TextStyle(
                        color: Appcolors.primaryColor,
                        fontSize: 16.sp,
                        fontWeight: .w900
                      ),))
                    ],
                  )
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
