import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Components/custom_field.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/booking_accepted.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: .fromHeight(50),
        child: CustomAppbar(
          title: "Add New Card",
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(LucideIcons.move_left)),
          action: Icon(LucideIcons.ellipsis_vertical),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Image.asset(AppImages.creditCardImage),
              SizedBox(height: 20.h),
              Text(
                "Card Number",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              CustomFieldInput(title: "Enter Card Number"),
              SizedBox(height: 15.h),
              Text(
                "Card Holder Name",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              CustomFieldInput(title: "Enter Holder Name"),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  SizedBox(
                    width: 155.w,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Expired",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .bold,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomFieldInput(title: "MM/YY"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 155.w,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "CVV Code",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .bold,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomFieldInput(title: "CVV"),
                      ],
                    ),
                  ),
                ],
              ),
             SizedBox(height: 20.h,),
              CustomButton(
                title: "Add Card",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingAcceptedScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
