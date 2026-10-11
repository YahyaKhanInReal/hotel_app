import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_appbar.dart';
import 'package:hotel_app/Components/custom_container.dart';
import 'package:hotel_app/Model/favorite_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isChecked = false;
  List<CustomContainer> buttonsList = [
    CustomContainer(
      title: "San Diego",
      color: Appcolors.primaryColor,
      textColor: Appcolors.whiteColor,
    ),
    CustomContainer(
      title: "New york",
      color: Appcolors.greyColor.withOpacity(0.2),
      textColor: Appcolors.primaryColor,
    ),
    CustomContainer(
      title: "Amsterdam",
      color: Appcolors.greyColor.withOpacity(0.2),
      textColor: Appcolors.primaryColor,
    ),
  ];
  bool isSwitchOn = false;
  RangeValues rangeValues = RangeValues(0, 20);
  List<FavoriteModel> favoriteList = [
    FavoriteModel(
      image: AppImages.hotelImg1,
      title: "Eliinate Galian Hotel",
      subTitle: "Chestnut StreetRome, NY",
      price: "\$248",
      starImage: AppImages.starImage,
      starCount: "(532)",
      priceText: "Per Night",
    ),
    FavoriteModel(
      image: AppImages.hotelImg2,
      title: "Cerulean Temple Hotel",
      subTitle: "Chestnut StreetRome, NY",
      price: "\$156",
      starImage: AppImages.starImage,
      starCount: "(532)",
      priceText: "Per Night",
    ),
    FavoriteModel(
      image: AppImages.hotelImg3,
      title: "Double Oak Hotel",
      subTitle: "Chestnut StreetRome, NY",
      price: "\$163",
      starImage: AppImages.starImage,
      starCount: "(532)",
      priceText: "Per Night",
    ),
    FavoriteModel(
      image: AppImages.hotelImg4,
      title: "Jade Gem Resort",
      subTitle: "Chestnut StreetRome, NY",
      price: "\$211",
      starImage: AppImages.starImage,
      starCount: "(532)",
      priceText: "Per Night",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: .fromHeight(50),
        child: CustomAppbar(
          title: "Favorite",
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(LucideIcons.move_left)),
          action: IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                scrollControlDisabledMaxHeightRatio: 700,
                context: context,
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Container(
                      width: .infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisSize: .min,
                          children: [
                            Center(
                              child: Text(
                                "Filter By",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "Placeholder",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              width: .infinity,
                              decoration: BoxDecoration(
                                border: .all(
                                  width: 0.1,
                                  color: Appcolors.greyTwoColor,
                                ),
                                borderRadius: .circular(15),
                              ),
                              child: ListTile(
                                title: Text(
                                  "3 Guest ( 2 adults , 1 children )",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                trailing: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                            ListTile(
                              contentPadding: .zero,
                              title: Text(
                                "Price",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              trailing: Text(
                                "\$0 - \$80",
                                style: TextStyle(color: Appcolors.greyColor),
                              ),
                            ),
                            RangeSlider(
                              min: 0,
                              max: 80,
                              activeColor: Appcolors.primaryColor,
                              values: rangeValues,
                              onChanged: (val) {
                                rangeValues = val;
                              },
                            ),
                            ListTile(
                              contentPadding: .zero,
                              title: Text(
                                "Instant Book",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: .bold,
                                ),
                              ),
                              subtitle: Text(
                                "Book without waiting for the host to respond",
                                style: TextStyle(
                                  color: Appcolors.greyTwoColor,
                                  fontSize: 12,
                                ),
                              ),
                              trailing: Switch(
                                activeTrackColor: Appcolors.primaryColor,
                                value: isSwitchOn,
                                onChanged: (val) {
                                  setState(() {
                                    isSwitchOn = val;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: .bold,
                              ),
                            ),
                            SizedBox(
                              height: 52.h,
                              child: ListView.builder(
                                padding: .zero,
                                itemCount: buttonsList.length,
                                scrollDirection: .horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return CustomContainer(
                                    title: buttonsList[index].title.toString(),
                                    color: buttonsList[index].color,
                                    textColor: buttonsList[index].textColor,
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Facilities",
                              style: TextStyle(
                                fontWeight: .bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            StatefulBuilder(
                              builder: (context, setModelState) {
                                return Container(
                                  width: .infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: .circular(20),
                                  ),
                                  child: Column(
                                    mainAxisSize: .min,
                                    children: [
                                      ListTile(
                                        contentPadding: .zero,
                                        leading: Text(
                                          "Free Wifi",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Appcolors.greyTwoColor,
                                          ),
                                        ),
                                        trailing: Checkbox(
                                          activeColor: Appcolors.primaryColor,
                                          value: isChecked,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        contentPadding: .zero,
                                        leading: Text(
                                          "Swimming Pool",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Appcolors.greyTwoColor,
                                          ),
                                        ),
                                        trailing: Checkbox(
                                          activeColor: Appcolors.primaryColor,
                                          value: isChecked,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        contentPadding: .zero,
                                        leading: Text(
                                          "Tv",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Appcolors.greyTwoColor,
                                          ),
                                        ),
                                        trailing: Checkbox(
                                          activeColor: Appcolors.primaryColor,
                                          value: isChecked,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        contentPadding: .zero,
                                        leading: Text(
                                          "Laundry",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Appcolors.greyTwoColor,
                                          ),
                                        ),
                                        trailing: Checkbox(
                                          activeColor: Appcolors.primaryColor,
                                          value: isChecked,
                                          onChanged: (val) {
                                            setModelState(() {
                                              isChecked = val!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 15.h,),
                            Text(
                              "Date",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: .bold,
                              ),
                            ),
                            SizedBox(height: 10.h,),
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
                                    width: 155.w,
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
                                    width: 155.w,
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
                            SizedBox(height: 15.h,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.filter_list),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding: .all(20),
                prefixIcon: Icon(LucideIcons.search),
                suffixIcon:Icon(LucideIcons.sliders_horizontal),
                // Image.asset(
                //   AppImages.filterIcon,
                //   height: 12.h,
                //   width: 12.w,
                //   fit: .fitHeight,
                // ),
                hint: Text(
                  "Search...",
                  style: TextStyle(
                    color: Appcolors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Appcolors.greyTwoColor,
                  ),
                  borderRadius: .circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Appcolors.greyTwoColor,
                  ),
                  borderRadius: .circular(20),
                ),
              ),
            ),
            SizedBox(height: 30.h),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.w,
                  crossAxisSpacing: 20.h,
                  childAspectRatio: 0.68,
                ),
                scrollDirection: .vertical,
                itemCount: favoriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisSize: .min,
                      children: [
                        Image.asset(favoriteList[index].image.toString()),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Image.asset(
                              favoriteList[index].starImage.toString(),
                              height: 14.h,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              "4.4",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.yellow.shade800,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              favoriteList[index].starCount.toString(),
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Appcolors.greyTwoColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          favoriteList[index].title.toString(),
                          style: TextStyle(fontWeight: .bold),
                        ),
                        Text(
                          favoriteList[index].subTitle.toString(),
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Appcolors.greyTwoColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            Text(
                              favoriteList[index].price.toString(),
                              style: TextStyle(fontWeight: .bold),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              favoriteList[index].priceText.toString(),
                              style: TextStyle(
                                color: Appcolors.greyTwoColor,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
