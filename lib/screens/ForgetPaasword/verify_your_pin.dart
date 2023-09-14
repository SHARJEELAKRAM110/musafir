import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/Constants/Colors.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Widgets/Round Button.dart';
import 'create_new_password.dart';

class VerifyYourPin extends StatefulWidget {
  const VerifyYourPin({super.key});

  @override
  State<VerifyYourPin> createState() => _VerifyYourPinState();
}

class _VerifyYourPinState extends State<VerifyYourPin> {
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
            CustomText(
              text: 'Verify Your Pin Code',
              color: Color(0xFF374151),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 320,
              child: CustomText(
                text: 'We sent the OTP code to your phone,\nplease check it and enter below',
                color: Color(0xFF9CA3AF),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            phoneOtp(context),
            SizedBox(
              height: 30.h,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Remember the password?',
                    style: TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' Sign in',
                    style: TextStyle(
                      color: Color(0xFF4AC3B4),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210.h,
            ),
            RoundButton(
              title: "Verify",
              onpress: () {
                Get.to(CreateNewPassword());
              },
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Do not Recevied the Verification code',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF1D69A6),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend again',
                      style: TextStyle(
                        color: Color(0xFF4AC3B4),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
  phoneOtp(BuildContext context){
    return  PinCodeTextField(
      appContext: context,
      textStyle:const TextStyle(
        color: Colors.white,
      ),
      cursorColor: AppColors().blueMain,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius:  BorderRadius.all(Radius.circular(10.sp)),
          fieldHeight: 70.h ,
          fieldWidth: 50.w,
          activeFillColor: Colors.black,
          activeColor: Colors.black,
          selectedFillColor: Colors.black.withOpacity(.5),
          inactiveFillColor: Colors.transparent,
          selectedColor:  AppColors().blueMain,
          inactiveColor: Colors.black.withOpacity(.3)

      ),

      pastedTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      length:6,
      validator: (v) {
        if (v!.length <6) {
          return "Enter Correct OTP Code";
        } else {
          return null;
        }
      },
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      boxShadows: const [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
      onCompleted: (v) {
        debugPrint("Completed");
      },

      onChanged: (value) {

      },
      beforeTextPaste: (text) {
        debugPrint("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
