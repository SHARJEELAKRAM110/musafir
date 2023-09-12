import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/screens/LoginScreen/login_screen.dart';

import '../../Constants/Colors.dart';
import '../../Widgets/CustomWidgets/custom_text.dart';

class TrackYourRide extends StatefulWidget {
  const TrackYourRide({super.key});

  @override
  State<TrackYourRide> createState() => _TrackYourRideState();
}

class _TrackYourRideState extends State<TrackYourRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgWhite,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(),
              ],
            ),
            SizedBox(height: 60.h,),
            Image.asset("assets/images/locationIcon.png",height: 278.h,width: 278.w,),
            SizedBox(height: 80.h,),
            SizedBox(
              width: 313,
              child: CustomText(text: 'Track your ride',
                textAlign: TextAlign.center,
                color: const Color(0xFF1F2937),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:20.w),
              child: SizedBox(
                width: 283,
                child: CustomText(text: 'Know your driver in advance and be able to view current location in real time on the map',
                  textAlign: TextAlign.center,
                  color: const Color(0xFF9CA3AF),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 70.h,),
            InkWell(
              onTap: (){
                Get.to(LoginScreen());
              },
              child: Container(
                width: 190.w,
                height: 45.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFF4AC3B4),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Center(
                  child: CustomText(text: 'GET STARTED!',
                    textAlign: TextAlign.center,
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
