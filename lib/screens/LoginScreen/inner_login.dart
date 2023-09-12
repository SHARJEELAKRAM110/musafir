import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:musafir/Widgets/Round%20Button.dart';

import '../../Widgets/customtext_formfield.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.w,),
                Image.asset("assets/images/logo-google.png",height: 20.h,width: 20.w,),
                SizedBox(width: 40.w,),

                CustomText(text:
                  'Continue with Google',
                  textAlign: TextAlign.center,
                    color: Color(0xFF1F2937),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.w,),
                Image.asset("assets/images/logo-facebook@2x.png",height: 20.h,width: 20.w,),
                SizedBox(width: 35.w,),

                CustomText(text:
                  'Continue with Facebook',
                  textAlign: TextAlign.center,
                    color: Color(0xFF1F2937),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
              ],
            ),
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 103,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4B5563),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF4B5563).withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 9.w,),
                CustomText(text: 'Or better yet...',
                  textAlign: TextAlign.center,
                    color: Color(0xFF4B5563),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                SizedBox(width: 9.w,),

                Container(
                  width: 103,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4B5563),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFF4B5563).withOpacity(0.1),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 40.h,),
            CustomTextFormFiled(hintText: 'Email or Mobile number',),
            SizedBox(height: 20.h,),
            CustomTextFormFiledPassword(hintText: 'Password',),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked, onChanged: (bool? value) {
                      isChecked=value!;
                    },
                    ),
                    CustomText(text:
                      'Keep me sign in',
                        color: Color(0xFF4B5563),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                  ],
                ),
                CustomText(text:
                  'Forget Password?',
                    color: Color(0xFF4AC3B4),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
              ],
            ),
            SizedBox(height: 20.h,),
            RoundButton(title: "Login", onpress: (){},
            ),
          ],
        ),
      ),
    );
  }
}
