import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/Constants/Colors.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:musafir/screens/SiginScreen/sign_in_screen.dart';

class RequestRide extends StatefulWidget {
  const RequestRide({super.key});

  @override
  State<RequestRide> createState() => _RequestRideState();
}

class _RequestRideState extends State<RequestRide> {
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
                InkWell(
                    onTap: (){
                      Get.offAll(SignInScreen());
                    },
                    child: CustomText(text: "Skip",color:const Color(0xff4B5563),)),
              ],
            ),
            SizedBox(height: 60.h,),
            Image.asset("assets/images/Page 1.png",height: 278.h,width: 278.w,),
            SizedBox(height: 80.h,),
            SizedBox(
              width: 313,
              child: CustomText(text: 'Request Ride',
                  textAlign: TextAlign.center,
                  color: const Color(0xFF1F2937),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:30.w),
              child: SizedBox(
                width: 283,
                child: CustomText(text: 'Request a ride get picked up by a nearby community driver',
                  textAlign: TextAlign.center,
                    color: const Color(0xFF9CA3AF),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
