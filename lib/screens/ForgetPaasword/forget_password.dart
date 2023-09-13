import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';

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
          'Enter your registered email or mobile number below',
            color: Color(0xFF9CA3AF),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      SizedBox(height: 33.h,),
      CustomText(text:
        'Email or Mobile number',
          color: Color(0xFF9CA3AF),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),


    ],

  ),
),
    );
  }
}
