import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/Auth/sign_in.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
        
              children: [
                // SizedBox(height: 30.h,),
                Text("Create Account",
                  textAlign: .center,
                  style: TextStyle(
                      color: Appcolors.darkColor,
                      fontWeight: .w900,
                      fontSize: 24.sp
                  ),),
                SizedBox(height: 12.h,),
                Text("Lorem ipsum dolor sit amet, consectetur",style: TextStyle(
                    fontSize: 16.sp,
                    color:Color(0xff434E58)
                ),),
                SizedBox(height: 30.h,),
                Align(
                  alignment: .topStart,
                  child: Text("Full Name",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Appcolors.darkColor
                  ),),
                ),
                SizedBox(height: 10.h,),
                TextFormField(
                    decoration: InputDecoration(
                        hint: Text("Enter your name",
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
                  child: Text("Email ",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Appcolors.darkColor
                  ),),
                ),
                SizedBox(height: 10.h,),
                TextFormField(
                    decoration: InputDecoration(
                        hint: Text("Enter your email",
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
                  child: Text("Password",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Appcolors.darkColor
                  ),),
                ),
                SizedBox(height: 10.h,),
                TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_sharp),
                        hint: Text("Enter your password",
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
                SizedBox(height: 40.h,),
                CustomButton(title: "Next", onPressed: (){
                  showDialog(context: context,
                      barrierDismissible: true,
                      builder:(BuildContext context){
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AlertDialog(
                        icon:Image.asset(AppImages.checkMarkImage,width: 68.w,height: 68.h,),
                        title: Text("Your account is successfully \n created",style: TextStyle(
                          fontSize: 14.sp,
                          color: Appcolors.greyColor,
                          fontWeight: FontWeight.w700
                        ),),
                        actions: [
                          CustomButton(title: "Continue", onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SignInScreen()));
                          })
                        ],
                      ),
                    );
                      });
                }),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Appcolors.greyColor.withOpacity(0.6),
                        thickness: 1,
                      ),
                    ),
        
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        'Or Sign In with',
                        style: TextStyle(
                          color: Appcolors.greyColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
        
                    Expanded(
                      child: Divider(
                        color: Appcolors.greyColor.withOpacity(0.6),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Image.asset(AppImages.googleImage,width: 24.h,),
                    Image.asset(AppImages.facebookImage,width: 24.h,),
                    Image.asset(AppImages.appleImage,width: 24.h,),
                  ],
                ),
                SizedBox(height: 25.h,),
                RichText(
                  textAlign: .center,
                    text: TextSpan(
                  text: " By signing up you agree to our ",style: TextStyle(
                    color: Appcolors.greyColor,
                      fontSize: 16.sp
                ),
                  children: [
                    TextSpan(text: " Terms \n",style: TextStyle(
                      color: Appcolors.darkColor,
                        fontSize: 16.sp,
                    )),
                    TextSpan(text: " and ",style: TextStyle(
                        color: Appcolors.greyColor,
                        fontSize: 16.sp
                    )),
                    TextSpan(text: " Conditions of Use",style: TextStyle(
                        color: Appcolors.darkColor,
                        fontSize: 16.sp
                    )),
                  ]
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
