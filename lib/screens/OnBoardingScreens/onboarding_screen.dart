import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Constants/Colors.dart';
import 'package:musafir/screens/OnBoardingScreens/request_ride.dart';
import 'package:musafir/screens/OnBoardingScreens/confirm_your_driver.dart';
import 'package:musafir/screens/OnBoardingScreens/track_your_ride.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex=0;
  PageController ?_controller;
  List<Widget>onBoardingScreens=[
    const RequestRide(),
    const ConfirmYourDriver(),
    const TrackYourRide()
  ];
  @override
  void initState() {
    _controller=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgWhite,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
                onPageChanged: (int index){
                setState(() {
                  currentIndex=index;
                });
                },
                itemCount: onBoardingScreens.length,
                itemBuilder: (context,i){
              return onBoardingScreens[currentIndex];
            }),
          ),
          Container(
            color: AppColors().bgWhite,
            child: Container(
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors().gray,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:List.generate(onBoardingScreens.length, (index) => buildDot(index, context)),
              ),
            ),
          ),
          SizedBox(height: 35.h,),
        ],
      ),
    );
  }
  Container buildDot(int index,BuildContext context){
    return Container(
      height: 6.h,
      width: 30.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex==index?AppColors().blueMain:Colors.transparent,
      ),
      child: SizedBox(
        height: 6.h,
        width:currentIndex==index?30.w:6.h,
      ),
    );
  }
}
