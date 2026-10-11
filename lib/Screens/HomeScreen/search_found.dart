import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';

import '../../Components/custom_appbar.dart';
import '../../Components/custom_field.dart';
import '../../Model/home_buttons_model.dart';

class SearchFoundScreen extends StatefulWidget {
  const SearchFoundScreen({super.key});

  @override
  State<SearchFoundScreen> createState() => _SearchFoundScreenState();
}

class _SearchFoundScreenState extends State<SearchFoundScreen> {
  List<HomeButtonsModel> homeButtonsList = [
    HomeButtonsModel(
      title: "All",
    ),
    HomeButtonsModel(
      title: "Villas",
      image: AppImages.hotelIcon,
    ),
    HomeButtonsModel(
      title: "Hotels",
      image: AppImages.hotelIcon,
    ),
    HomeButtonsModel(
      title: "Apartments",
      image: AppImages.hotelIcon,
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: .fromHeight(50)
        , child: CustomAppbar(
          title: "Search",
          leading: Icon(LucideIcons.move_left),
          action: Icon(LucideIcons.bell_dot,color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomFieldInput(
                  title: "Search...",
                  suffixIcon: Icon(LucideIcons.sliders_horizontal),
                  prefixIcon: Icon(LucideIcons.search)),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 52.h,
                child: ListView.builder(
                  padding: .zero,
                  itemCount: 4,
                  scrollDirection: .horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: .center,
                      width: index == 0 ? 58.w : 120.w,
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: index == 0
                              ? Appcolors.primaryColor
                              : Colors.transparent,
                          borderRadius: .circular(12),
                          border: .all(
                              color: Appcolors.greyColor.withOpacity(0.5),
                              width: 0.5
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                            if (index != 0)
                              Image.asset(
                                homeButtonsList[index].image.toString(),
                                height: 20.h,
                              ),
                            if(index != 0)
                              SizedBox(width: 6.w,),
                            Text(
                              homeButtonsList[index].title.toString(),style: TextStyle(
                                color: index == 0 ? Appcolors.whiteColor : Colors.black
                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15.h,),
              Image.asset(AppImages.hotelLandScape,fit: .cover,),
              ListTile(
                contentPadding: .zero,
                title: Text("Sapphire Cove Hotel",style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 16.sp
                ),),
                subtitle: Text("Key West, FL",style: TextStyle(
                fontSize: 12.sp,
                color: Appcolors.greyTwoColor
                ),),
                trailing: Column(
                  children: [
                    Text("\$290",style: TextStyle(
                      color: Appcolors.primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700
                    ),),
                    Text("Per Night",style: TextStyle(
                      fontSize: 12.sp,
                      color: Appcolors.greyTwoColor
                    ),)
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(LucideIcons.bed_double,color: Color(0xff262626),),
                  SizedBox(width: 5.w,),
                  Text("3 beds",style: TextStyle(
                    color: Color(0xff262626),
                    fontSize: 14.sp
                  ),),
                  SizedBox(width: 10.w,),
                  Icon(LucideIcons.bath,color: Color(0xff262626)),
                  SizedBox(width: 5.w,),
                  Text("3 bathroom",style: TextStyle(
                      color: Color(0xff262626),
                      fontSize: 14.sp
                  )),
                ]
              ),
        
              SizedBox(height: 20.h,),
              Image.asset(AppImages.hotelLandScape2,fit: .cover,),
              ListTile(
                contentPadding: .zero,
                title: Text("Sapphire Cove Hotel",style: TextStyle(
                    color: Colors.black,
                    fontWeight: .bold,
                    fontSize: 16.sp
                ),),
                subtitle: Text("Key West, FL",style: TextStyle(
                    fontSize: 12.sp,
                    color: Appcolors.greyTwoColor
                ),),
                trailing: Column(
                  children: [
                    Text("\$290",style: TextStyle(
                        color: Appcolors.primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700
                    ),),
                    Text("Per Night",style: TextStyle(
                        fontSize: 12.sp,
                        color: Appcolors.greyTwoColor
                    ),)
                  ],
                ),
              ),
              Row(
                  children: [
                    Icon(LucideIcons.bed_double,color: Color(0xff262626),),
                    SizedBox(width: 5.w,),
                    Text("3 beds",style: TextStyle(
                        color: Color(0xff262626),
                        fontSize: 14.sp
                    ),),
                    SizedBox(width: 10.w,),
                    Icon(LucideIcons.bath,color: Color(0xff262626)),
                    SizedBox(width: 5.w,),
                    Text("3 bathroom",style: TextStyle(
                        color: Color(0xff262626),
                        fontSize: 14.sp
                    )),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
