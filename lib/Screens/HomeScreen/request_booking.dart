import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/checkout.dart';

class RequestToBookScreen extends StatelessWidget {
  const RequestToBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: .fromHeight(50), 
          child: CustomAppbar(
              title: "Request to Book",
            leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(LucideIcons.move_left)),
            action: Icon(LucideIcons.ellipsis_vertical),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Date",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 10.h,),
              //Calender
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      showDatePicker(
                          context: context, firstDate: DateTime.now(), lastDate: DateTime.now());
                    },
                    child: Container(
                      alignment: .center,
                      width: 165.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                          color: Appcolors.greyColor.withOpacity(0.2),
                          borderRadius: .circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Row(
                            mainAxisAlignment: .center,
                            children: [
                              Icon(Icons.calendar_month_outlined),
                              SizedBox(width: 6.w,),
                              Text("Check-In",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: .bold
                              ),)
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Text("Nov 12, 2024",style: TextStyle(
                              fontSize: 16.sp,
                              color: Appcolors.greyTwoColor
                          ),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now());
                    },
                    child: Container(
                      alignment: .center,
                      width: 165.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                          color: Appcolors.greyColor.withOpacity(0.2),
                          borderRadius: .circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Row(
                            mainAxisAlignment: .center,
                            children: [
                              Icon(Icons.calendar_month_outlined),
                              SizedBox(width: 6.w,),
                              Text("Check-Out",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: .bold
                              ),)
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Text("Nov 14, 2024",style: TextStyle(
                              fontSize: 16.sp,
                              color: Appcolors.greyTwoColor
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.h,),
              ListTile(
                contentPadding: .zero,
                title: Text("Guest",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold
                ),),
                trailing: Row(
                  mainAxisSize: .min,
                  children: [
                    Container(
                      alignment: .center,
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: Color(0xffECF1F6)
                      ),
                      child: Icon(Icons.remove,color: Appcolors.primaryColor,),
                    ),
                    SizedBox(width: 8.w,),
                    Text("1",style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: .bold,
                      color: Appcolors.darkColor
                    ),),
                    SizedBox(width: 8.w,),
                    Container(
                      alignment: .center,
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          shape: .circle,
                          color: Appcolors.primaryColor
                      ),
                      child: Icon(Icons.add,color: Appcolors.whiteColor,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Text("Pay With",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold
              ),),
              SizedBox(height: 10.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(16),
                  border: .all(
                    color: Appcolors.greyTwoColor,
                    width: 0.2
                  ),
                ),
                child: ListTile(
                  horizontalTitleGap: 10,
                  minVerticalPadding: 14,
                  leading:  Container(
                    alignment: .center,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        shape: .circle,
                        color: Color(0xffECF1F6)
                    ),
                    child: Icon(Icons.credit_card,color: Appcolors.darkColor,),
                  ),
                  title: Text("FastPays",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp
                  ),),
                  subtitle: Text("*******6758"),
                  trailing:  Container(
                    alignment: .center,
                    width: 55.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: .circular(24),
                      border: .all(
                        width: 1,
                        color: Appcolors.primaryColor
                      )
                    ),
                    child: Text("Edit",style: TextStyle(
                      color: Appcolors.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: .w700
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Text("Payment Details",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: .bold
              ),),
              SizedBox(height: 10.h,),
              ListTile(
                contentPadding: .zero,
                title: Text("Total: 2 Night",style: TextStyle(
                  fontSize: 16.sp,
                  color: Appcolors.greyTwoColor
                ),),
                trailing: Text("\$400",style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: .bold,
                  color: Appcolors.darkColor
                ),),
              ),
              ListTile(
                contentPadding: .zero,
                title: Text("Cleaning Fee",style: TextStyle(
                    fontSize: 16.sp,
                    color: Appcolors.greyTwoColor
                ),),
                trailing: Text("\$5",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: .bold,
                    color: Appcolors.darkColor
                ),),
              ),
              ListTile(
                contentPadding: .zero,
                title: Text("Service Fee",style: TextStyle(
                    fontSize: 16.sp,
                    color: Appcolors.greyTwoColor
                ),),
                trailing: Text("\$5",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: .bold,
                    color: Appcolors.darkColor
                ),),
              ),
              Divider(thickness: 0.6,),
              ListTile(
                contentPadding: .zero,
                title: Text("Total Payment:",style: TextStyle(
                    fontSize: 18.sp,
                    color: Appcolors.darkColor
                ),),
                trailing: Text("\$410",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold,
                    color: Appcolors.darkColor
                ),),
              ),
              SizedBox(height: 20.h),
              CustomButton(title: "Checkout", onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>CheckoutScreen()));
              }),
              SizedBox(height: 15.h,),
            ],
          ),
        ),
      ),
    );
  }
}
