import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/screens/SiginScreen/sign_in_screen.dart';

import '../../Constants/Colors.dart';
import '../../Widgets/CustomWidgets/custom_text.dart';

class ConfirmYourDriver extends StatefulWidget {
  const ConfirmYourDriver({super.key});

  @override
  State<ConfirmYourDriver> createState() => _ConfirmYourDriverState();
}

class _ConfirmYourDriverState extends State<ConfirmYourDriver> {
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
            Image.asset("assets/images/confirmDriver.png",height: 278.h,width: 278.w,),
            SizedBox(height: 80.h,),
            SizedBox(
              width: 313,
              child: CustomText(text: 'Confirm Your Driver',
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
                child: CustomText(text: 'Huge drivers network helps you find comforable, safe and cheap ride',
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
