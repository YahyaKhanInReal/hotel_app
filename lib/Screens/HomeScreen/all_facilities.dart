import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_facilitie.dart';

class AllFacilitiesScreen extends StatefulWidget {
  const AllFacilitiesScreen({super.key});

  @override
  State<AllFacilitiesScreen> createState() => _AllFacilitiesScreenState();
}

class _AllFacilitiesScreenState extends State<AllFacilitiesScreen> {
  List<CustomFacilities> facilitiesList = [
    CustomFacilities(
      leadingIcon: Icon(LucideIcons.building, color: Colors.black),
      title: "Hotel service",
      count: "(4 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(Icons.settings, color: Colors.black),
      title: "General",
      count: "(5 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(Icons.directions_car_rounded, color: Colors.black),
      title: "Transportation",
      count: "(3 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(LucideIcons.briefcase_business, color: Colors.black),
      title: "Business Facilities",
      count: "(6 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(LucideIcons.hospital, color: Colors.black),
      title: "Nearby Services",
      count: "(7 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(Icons.cake, color: Colors.black),
      title: "Kids",
      count: "(8 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
    CustomFacilities(
      leadingIcon: Icon(LucideIcons.wifi, color: Colors.black),
      title: "Connectivity",
      count: "(4 facilities)",
      trailingIcon: Icon(Icons.add, color: Colors.black),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: .fromHeight(50),
        child: CustomAppbar(
          title: "All Facilities",
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon:Icon(LucideIcons.move_left),)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            CustomFacilities(
              leadingIcon: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon:Icon(LucideIcons.store,size: 24.h, color: Colors.black)),
              title: "Food and Drink",
              count: "(4 facilities)",
              trailingIcon: Icon(Icons.remove, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "•  Vegetarian meal",
                    style: TextStyle(
                      color: Appcolors.greyTwoColor,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "•  Mountain dew",
                    style: TextStyle(
                      color: Appcolors.greyTwoColor,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "•  Vegetarian name",
                    style: TextStyle(
                      color: Appcolors.greyTwoColor,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    "•  BreakFast name",
                    style: TextStyle(
                      color: Appcolors.greyTwoColor,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                scrollDirection: .vertical,
                itemCount: facilitiesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomFacilities(
                    leadingIcon: facilitiesList[index].leadingIcon,
                    title: facilitiesList[index].title.toString(),
                    count: facilitiesList[index].count.toString(),
                    trailingIcon: facilitiesList[index].trailingIcon,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
