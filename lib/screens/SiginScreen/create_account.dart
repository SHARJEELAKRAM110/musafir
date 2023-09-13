import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constants/Colors.dart';
import '../../Widgets/CustomWidgets/custom_text.dart';
import '../../Widgets/Round Button.dart';
import '../../Widgets/customtext_formfield.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  bool isChecked=false;
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
            SizedBox(height: 30.h,),
            CustomTextFormFiled(hintText: 'Email or Mobile number',
              controller: emailController,),
            SizedBox(height: 10.h,),
            CustomTextFormFiledPassword(hintText: 'Password',
              controller: passwordController,),
            SizedBox(height: 10.h,),

            CustomTextFormFiledPassword(hintText: 'Confirm Password',
              controller: confirmpasswordController,),
            SizedBox(height: 10.h,),
            SizedBox(height: 20.h,),
            RoundButton(title: "Sign Up", onpress: (){},
            ),
            SizedBox(height: 5.h,),
            Row(

              children: [
                Checkbox(
                    activeColor: AppColors().blueMain,
                    value: isChecked,
                    shape: RoundedRectangleBorder(
                    ),
                    onChanged: (value){
                      setState(() {
                        isChecked = !isChecked;
                        print(isChecked);
                      });
                    }),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By creating an account, you accept our\n',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.5,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms and conditions',
                        style: TextStyle(
                          color: Color(0xFF4AC3B4),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,


                        ),
                      ),
                      TextSpan(
                        text: ' you read\nour ',
                        style: TextStyle(
                          color: Color(0xFF4B5563),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.4,

                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Color(0xFF4AC3B4),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.5,

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
