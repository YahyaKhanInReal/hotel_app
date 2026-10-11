import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';

class ShareService extends StatelessWidget {
  const ShareService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
        CustomButton(title: "Share", onPressed: (){
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (BuildContext context){
            return Container(
              width: .infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    ListTile(
                      contentPadding: .zero,
                      title: Text("Share this Service",style: TextStyle(
                        color: Appcolors.darkColor,
                        fontSize: 16.sp
                      ),),
                      trailing: IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon: Icon(Icons.close)),
                    ),
                    SizedBox(height: 20.h,),
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
                    SizedBox(height: 20.h,),
                    Container(
                      width: .infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: .circular(16),
                      ),
                      child: ListTile(
                        title: Text("Instastaycom/hotel/the-aston-vill-hotel",style: TextStyle(
                          color: Appcolors.greyColor,
                          fontSize: 12.sp
                        ),),
                        trailing: Container(
                          width: 61.w,
                          height: 28.h,
                          child: Row(
                            mainAxisAlignment: .end,
                            children: [
                              Icon(Icons.copy_rounded,size: 14,color: Appcolors.primaryColor,),
                              Text("Copy",style: TextStyle(
                                color: Appcolors.primaryColor,
                                fontSize: 10.sp
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .start,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: .center,
                              width: 56.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color(0xff171725),
                              ),
                              child: Image.asset(AppImages.broadcast,width: 21,),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              "Airdrop",
                              style: TextStyle(
                                color: Appcolors.greyTwoColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: .center,
                              width: 56.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color(0xff66CB63),
                              ),
                              child:  Image.asset(AppImages.whatsapp,width: 21,),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              "Whatsapp",
                              style: TextStyle(
                                color: Appcolors.greyTwoColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: .center,
                              width: 56.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color(0xff1C3FF7),
                              ),
                              child:  Image.asset(AppImages.facebook,width: 21,color: Colors.white,),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              "Facebook",
                              textAlign: .center,
                              style: TextStyle(
                                color: Appcolors.greyTwoColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: .center,
                              width: 56.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color(0xffF41F52),
                              ),
                              child:  Image.asset(AppImages.instagram,width: 21,),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              "Instagram",
                              textAlign: .center,
                              style: TextStyle(
                                color: Appcolors.greyTwoColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
              });
        })
        ]
      ),
    );
  }
}
