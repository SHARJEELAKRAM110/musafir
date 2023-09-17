import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:musafir/screens/ForgetPaasword/verify_your_pin.dart';
import 'package:musafir/screens/HomeScreen/home_screen.dart';

import '../../Constants/Colors.dart';
import '../../Widgets/Round Button.dart';
import '../../Widgets/customtext_formfield.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 118.h,
            ),
            Center(
              child: CustomText(
                text: 'Enter your new password',
                color: Color(0xFF374151),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomText(text:
              'New password',
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            SizedBox(height: 10.h,),
            CustomTextFormFiled(hintText: '',),
            SizedBox(height: 20.h,),
            CustomText(text:
              'Confirm password',
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            SizedBox(height: 10.h,),

            CustomTextFormFiled(hintText: '',),
            SizedBox(
              height: 200.h,
            ),
            RoundButton(
              title: "Confirm",
              onpress: () {
                _showDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child:AlertDialog(
            insetPadding: EdgeInsets.fromLTRB(0, 200.h, 0,200.h),
            content:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/showdialog.png",height: 64.h,width: 64.w,),
                SizedBox(height: 20.h,),
                CustomText(text:
                'Success',
                  color: AppColors().black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 10.h,),
                CustomText(text:
                'Congratulations, you have \ncompleted your registration!',
                  color: Color(0xFF858597),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 25.h,),
                SizedBox(
                  height: 50.h,
                  width: 259.w,
                  child: MaterialButton(onPressed: (){
                    Get.to(HomeScreen());
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: AppColors().blueMain,
                    child: CustomText(text:
                    'Done',
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),

                  ),
                )
              ],
            ),
          )
        );
      },
    );
  }
}
