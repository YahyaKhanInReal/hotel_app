import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Components/custom_field.dart';
import 'package:hotel_app/Screens/HomeScreen/request_booking.dart';

class MapNearbyScreen extends StatelessWidget {
  const MapNearbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        alignment: .center,
        fit: .expand,
        children: [
          Positioned.fill(
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(AppImages.map2Image,fit: .cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 34,
              horizontal: 16,
            ),
            child: Align(
              alignment: .topCenter,
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children:[ Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: Appcolors.whiteColor,
                    shape: BoxShape.circle,
                  ),
                  child:  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(LucideIcons.move_left,size: 24.h,)),
                ),
                 Text("Nearby Hotel",style: TextStyle(
                   fontWeight: .bold,
                   fontSize: 18.sp
                 ),),
                Icon(Icons.filter_list_rounded,color: Colors.black,),
              ]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 90
            ),
            child:CustomFieldInput(
                title: "Search...", 
                suffixIcon: Icon(LucideIcons.sliders_horizontal), 
                prefixIcon: Icon(LucideIcons.search))
          ),

          Positioned(
            bottom: 50,
              child:Container(
                width: 320.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      Row(
                        crossAxisAlignment: .start,
                        children: [
                          ClipRRect(
                            borderRadius: .circular(12),
                            child: Image.asset(AppImages.onBoarding3Image,
                              height: 78.h,width: 78.w,fit: .cover,),
                          ),
                          SizedBox(width: 14.w,),
                          Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text("Serenity Sands",style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16.sp
                              ),),
                              SizedBox(height: 5.h,),
                              Row(
                                children: [
                                  Icon(LucideIcons.map_pin,color: Appcolors.greyTwoColor,size: 16.sp,),
                                  Text("Honolulu, Hl",style: TextStyle(
                                      color: Appcolors.greyTwoColor,
                                      fontWeight: FontWeight.w600,
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
                      SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> RequestToBookScreen()));
                            },
                            child: Container(
                              alignment: .center,
                              width: 212.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                  color: Appcolors.primaryColor,
                                  borderRadius: .circular(12.sp)
                              ),
                              child: Text("Booking Now",style: TextStyle(
                                  color: Appcolors.whiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),),
                            ),
                          ),
                          Container(
                              width: 44.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                color: Appcolors.whiteColor,
                                shape: BoxShape.circle,
                                border: .all(
                                  width: 0.5,
                                  color: Appcolors.greyColor
                                )
                              ),
                              child: Icon(LucideIcons.message_circle,color: Colors.black,)
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ) )
        ],
      ) ,
    );
  }
}
