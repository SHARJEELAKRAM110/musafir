import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';

import '../../Widgets/Round Button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding:  EdgeInsets.symmetric(horizontal: 20.w),
  child:   Column(

    mainAxisAlignment: MainAxisAlignment.start,

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
SizedBox(height: 118.h,),
      CustomText(text:

        'Forget Password',

          color: Color(0xFF374151),

          fontSize: 20,

          fontFamily: 'Inter',

          fontWeight: FontWeight.w700,

        ),
      SizedBox(height: 5.h,),
      SizedBox(
        width: 270,
        child: CustomText(text:
          'Enter your mobile number below.',
            color: Color(0xFF9CA3AF),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      SizedBox(height: 33.h,),
      CustomText(text:
        'Mobile number',
          color: Color(0xFF9CA3AF),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      SizedBox(height: 5.h,),

      SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),

              ),
              height: 45.h,
              width: 100.w,
              child: CountryListPick(

                theme: CountryTheme(
                  isShowFlag: true,
                  isShowTitle: false,
                  isShowCode: true,
                  isDownIcon: false,
                  showEnglishName: false,
                ),
                // Set default value
                initialSelection: '+92',
                // or
                // initialSelection: 'US'
                onChanged: (CountryCode? code) {
                },
              ),
            ),
            SizedBox(
              height: 50.h,
              width: 230.w,
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5.h),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffD9D9D9))),
                  enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter Phone Number',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20.h,),
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
  SizedBox(height: 200.h,),
  RoundButton(title: "Login", onpress: (){},),


    ],

  ),
),
    );
  }
}
