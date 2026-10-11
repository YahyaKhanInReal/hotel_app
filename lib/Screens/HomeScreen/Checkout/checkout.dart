import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Screens/HomeScreen/Checkout/add_new_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: .fromHeight(50), 
          child: CustomAppbar(
              leading: Icon(LucideIcons.move_left),
              action: Icon(LucideIcons.ellipsis_vertical),
              title: "Checkout")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                crossAxisAlignment: .start,
                children: [
                  ClipRRect(
                    borderRadius: .circular(12),
                    child: Image.asset(AppImages.onBoarding2Image,
                      height: 78.h,width: 78.w,fit: .cover,),
                  ),
                  SizedBox(width: 14.w,),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("The Aston Vill Hotel",style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 16.sp
                      ),),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(LucideIcons.map_pin,color: Appcolors.greyTwoColor,size: 16.sp,),
                          SizedBox(width: 5.w,),
                          Text("Veum Point, Michikoton",style: TextStyle(
                              color: Appcolors.greyTwoColor,
                              fontSize: 12.sp
                          ),)
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Text("\$270",style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp
                          ),),
                          Text("/night",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: .end,
                      children: [
                        Image.asset(AppImages.starImage,height: 20,),
                        SizedBox(width: 5.w,),
                        Text("4.0")
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30.h,),
              Container(
                width: .infinity,
                decoration: BoxDecoration(
                  borderRadius: .circular(20),
                  border: .all(
                    width: 0.5,
                    color: Appcolors.greyColor.withOpacity(0.7),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Your Booking",style: TextStyle(
                        color: Appcolors.primaryColor,
                        fontWeight: .bold,
                        fontSize: 14.sp
                      ),),
                      ListTile(
                        contentPadding: .zero,
                        leading: Icon(Icons.calendar_month,color: Appcolors.greyTwoColor,),
                        title: Text("Dates",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp
                        ),),
                        trailing: Text("12-14Nov 2024",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      ListTile(
                        contentPadding: .zero,
                        leading: Icon(LucideIcons.user_round,color: Appcolors.greyTwoColor,),
                        title: Text("Guest",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp
                        ),),
                        trailing: Text("2 Guest (1 room)",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      ListTile(
                        contentPadding: .zero,
                        leading: Icon(LucideIcons.warehouse,color: Appcolors.greyTwoColor,),
                        title: Text("Room type",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp
                        ),),
                        trailing: Text("Queen Room",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      ListTile(
                        contentPadding: .zero,
                        leading: Icon(LucideIcons.phone,color: Appcolors.greyTwoColor,),
                        title: Text("Phone",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp
                        ),),
                        trailing: Text("0987654321",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      SizedBox(height: 10.h,),
                      DottedLine(
                        dashColor: Colors.grey.shade600,
                        dashLength: 4,
                        dashGapLength: 4,
                        lineThickness: 1,
                      ),
                      SizedBox(height: 15.h,),
                      Text("Price Details",style: TextStyle(
                          color: Appcolors.primaryColor,
                          fontWeight: .bold,
                          fontSize: 14.sp
                      ),),
                      ListTile(
                        contentPadding: .zero,
                        title: Text("Price",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp
                        ),),
                        trailing: Text("\$139.00",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      ListTile(
                        contentPadding: .zero,
                        title: Text("Admin Fee",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp
                        ),),
                        trailing: Text("\$2.50",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                        ),),
                      ),
                      ListTile(
                        contentPadding: .zero,
                        title: Text("Total Price",style: TextStyle(
                            color: Appcolors.darkColor,
                            fontSize: 14.sp,
                          fontWeight: .bold
                        ),),
                        trailing: Text("\$141.50",style: TextStyle(
                          color: Appcolors.darkColor,
                          fontSize: 14.sp,
                          fontWeight: .bold
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Text("Promo",style: TextStyle(
                  color: Appcolors.darkColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp
              ),),
              SizedBox(height: 10.h,),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,builder: (BuildContext context){
                    return Container(
                      width: .infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: .min,
                          children: [
                            ListTile(
                              contentPadding: .zero,
                              leading: Text("My Coupon",style: TextStyle(
                                  color: Appcolors.darkColor,
                                  fontSize: 20.sp,
                                  fontWeight: .bold
                              ),),
                              trailing: IconButton(icon:Icon(Icons.close,color: Appcolors.darkColor,),onPressed: (){
                                Navigator.pop(context);
                              },),
                            ),
                            SizedBox(height: 20.h,),
                            Container(
                              width: .infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffFEFEFE),
                                borderRadius: .circular(12),
                                border:.all(
                                  width: 1,
                                  color: Appcolors.primaryColor
                                )
                              ),
                              child: ListTile(
                                minVerticalPadding: 20,
                                leading: Icon(LucideIcons.badge_percent,color: Appcolors.primaryColor,),
                                title: Text("50% Cashback",style: TextStyle(
                                    color: Appcolors.primaryColor,
                                    fontWeight: .w700
                                ),),
                                subtitle: Row(
                                  children: [
                                    Text("Expired in 2 days ",style: TextStyle(
                                        color: Appcolors.greyTwoColor,
                                        fontSize: 12.sp
                                    ),),
                                    Text(" See Detail",style: TextStyle(
                                        color: Appcolors.primaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp
                                    ),),
                                  ],
                                ),
                                trailing: Icon(Icons.check,color: Appcolors.primaryColor,)
                              ),
                            ),
                            SizedBox(height: 12.h,),
                            Container(
                              width: .infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xffFEFEFE),
                                  borderRadius: .circular(12),
                              ),
                              child: ListTile(
                                  minVerticalPadding: 20,
                                  leading: Icon(LucideIcons.badge_percent,color: Appcolors.primaryColor,),
                                  title: Text("15% Cashback",style: TextStyle(
                                      color: Appcolors.darkColor,
                                      fontWeight: .w700
                                  ),),
                                  subtitle: Row(
                                    children: [
                                      Text("Expired in 1 days ",style: TextStyle(
                                          color: Appcolors.greyTwoColor,
                                          fontSize: 12.sp
                                      ),),
                                      Text(" See Detail",style: TextStyle(
                                          color: Appcolors.primaryColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp
                                      ),),
                                    ],
                                  ),
                              ),
                            ),
                            SizedBox(height: 12.h,),
                            Container(
                              width: .infinity,
                              decoration: BoxDecoration(
                                  color: Color(0xffFEFEFE),
                                  borderRadius: .circular(12),
                              ),
                              child: ListTile(
                                  minVerticalPadding: 20,
                                  leading: Icon(LucideIcons.badge_percent,color: Appcolors.primaryColor,),
                                  title: Text("10% Cashback",style: TextStyle(
                                      color: Appcolors.darkColor,
                                      fontWeight: .w700
                                  ),),
                                  subtitle: Row(
                                    children: [
                                      Text("Expired in 7 days ",style: TextStyle(
                                          color: Appcolors.greyTwoColor,
                                          fontSize: 12.sp
                                      ),),
                                      Text(" See Detail",style: TextStyle(
                                          color: Appcolors.primaryColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp
                                      ),),
                                    ],
                                  ),
                              ),
                            ),
                            SizedBox(height: 30.h,),
                            CustomButton(title: "Use Coupon", onPressed: (){}),
                            SizedBox(height: 20.h,)
                          ],
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  width: .infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffE9EBED),
                    borderRadius: .circular(20)
                  ),
                  child: ListTile(
                    minVerticalPadding: 18,
                    leading: Icon(LucideIcons.badge_percent,color: Appcolors.primaryColor,),
                    title: Text("Select",style: TextStyle(
                      color: Appcolors.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Appcolors.primaryColor,),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              CustomButton(title: "Select Payment", onPressed: (){
                showModalBottomSheet(
                  isScrollControlled: true,

                    context: context,builder: (BuildContext context){
                  return Container(
                    width: .infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: .min,
                        children: [
                          ListTile(
                            contentPadding: .zero,
                            leading: Text("Payment Method",style: TextStyle(
                              color: Appcolors.darkColor,
                              fontSize: 20.sp,
                              fontWeight: .bold
                            ),),
                            trailing: IconButton(icon:Icon(Icons.close,color: Appcolors.darkColor,),onPressed: (){
                              Navigator.pop(context);
                            },),
                          ),
                          SizedBox(height: 20.h,),
                          Container(
                            width: .infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffFEFEFE),
                              borderRadius: .circular(12),
                            ),
                            child: ListTile(
                              minVerticalPadding: 20,
                              leading: Image.asset(AppImages.masterLogo,
                              width: 40.w,height: 24.h,),
                              title: Text("Master Card",style: TextStyle(
                              color: Appcolors.darkColor,
                                  fontWeight: .w700
                              ),),
                              trailing: Checkbox(
                                activeColor: Appcolors.primaryColor,
                                  value: true,
                                  onChanged: (tr){}),
                            ),
                          ),
                          SizedBox(height: 12.h,),
                          Container(
                            width: .infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffFEFEFE),
                              borderRadius: .circular(12),
                            ),
                            child: ListTile(
                              minVerticalPadding: 20,
                              leading: Image.asset(AppImages.visaLogo,
                                width: 40.w,height: 24.h,),
                              title: Text("Visa Card",style: TextStyle(
                                color: Appcolors.darkColor,
                                fontWeight: .w700
                              ),),
                              trailing: Checkbox(
                                  activeColor: Appcolors.primaryColor,
                                  value: false,
                                  onChanged: (tr){}),
                            ),
                          ),
                          SizedBox(height: 12.h,),
                          Container(
                            width: .infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffFEFEFE),
                              borderRadius: .circular(12),
                            ),
                            child: ListTile(
                              minVerticalPadding: 20,
                              leading: Image.asset(AppImages.addCircle,
                                width: 40.w,height: 24.h,),
                              title: Text("Add Debit Card",style: TextStyle(
                                  color: Appcolors.darkColor,
                                  fontWeight: .w700
                              ),),
                            ),
                          ),
                          SizedBox(height: 30.h,),
                          CustomButton(title: "Confirm and Pay", onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>AddNewCardScreen()));
                          }),
                          SizedBox(height: 20.h,)
                        ],
                      ),
                    ),
                  );
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
