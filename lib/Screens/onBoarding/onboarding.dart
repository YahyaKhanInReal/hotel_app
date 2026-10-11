import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/AppAssets/appcolors.dart';
import 'package:hotel_app/AppAssets/appimages.dart';
import 'package:hotel_app/Components/custom_button.dart';
import 'package:hotel_app/Model/onBoardingModel.dart';
import 'package:hotel_app/Screens/Auth/sign_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: AppImages.onBoarding1Image,
        title: "Luxury and Comfort, \n just a Tap away",
        description: "Semper in cursus magna et eu varius \n nunc adipiscing. Elementum justo, laoreet \n id sem . "
    ),
    OnBoardingModel(
        image: AppImages.onBoarding2Image,
        title: "Book with Ease, \n Stay with Style",
        description: "Semper in cursus magna et eu varius \n nunc adipiscing. Elementum justo, laoreet \n id sem . "
    ),
    OnBoardingModel(
        image: AppImages.onBoarding3Image,
        title: "Discover your Dream, \n Hotel Effortlessly",
        description: "Semper in cursus magna et eu varius \n nunc adipiscing. Elementum justo, laoreet \n id sem . "
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: .center,
        children:[
          PageView.builder(
            onPageChanged: (index){
              setState(() {
                currentPage = index;
              });
            },
          controller: pageController,
          itemCount: onBoardingList.length,
          itemBuilder: (BuildContext context, int index) {
          return Stack(
            alignment: .center,
            children: [
                Positioned.fill(
                  child:Image.asset(onBoardingList[index].image.toString(),
                    width: .infinity,fit: .fitHeight,),
                ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.9),
                      ],
                    ),
                  ),
                ),
              ),
                Positioned(
                  bottom: 251.h,
                  child: Text(onBoardingList[index].title.toString(),style: TextStyle(
                    color: Appcolors.whiteColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: .center,),
                ),
                SizedBox(height: 10.h,),
                Positioned(
                  bottom: 177.h,
                  child: Text(onBoardingList[index].description.toString(),style: TextStyle(
                    color: Appcolors.greyColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: .center,),
                ),
            ],
          );
        },
        ),
          Positioned(
            bottom: 145.h,
            child: SmoothPageIndicator(
                controller: pageController,
                count: onBoardingList.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Appcolors.primaryColor
              ),
            ),
          ),
          Positioned(
             bottom: 50.h,
            left: 20,
            right: 20,
            child: CustomButton(title: currentPage == onBoardingList.length -1 ? "Continue" : "Next", onPressed: (){
               if(currentPage == onBoardingList.length-1) {
                 Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context) => SignInScreen()));
               }else{
                 pageController.nextPage(
                     duration: const Duration(milliseconds: 400),
                     curve: Curves.easeInOutCubic);

               } })
          ),
      ]),
    );
  }
}
