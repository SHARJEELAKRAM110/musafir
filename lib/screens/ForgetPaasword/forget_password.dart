import 'package:country_list_pick/country_list_pick.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:musafir/screens/ForgetPaasword/verify_your_pin.dart';

import '../../Constants/Colors.dart';
import '../../Widgets/Round Button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final phoneNumberController = TextEditingController();
  bool loading = false;
  String code="+92";


  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
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
              text: 'Forget Password',
              color: Color(0xFF374151),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 270,
              child: CustomText(
                text: 'Enter your mobile number below.',
                color: Color(0xFF9CA3AF),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              text: 'Mobile number',
              color: Color(0xFF9CA3AF),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors().blueMain),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 50.h,
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
                      onChanged: (CountryCode? countryCode) {
                        code=countryCode?.code??"+92";

                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                    width: 230.w,
                    child: TextField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5.h),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors().blueMain)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors().blueMain)

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors().blueMain)

                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)

                        ),
                        hintText: '3171406070',                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
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
              height: 250.h,
            ),
            RoundButton(
              title: "Submit",
              onpress: () {
                  if(phoneNumberController.text.isNotEmpty){
                    loading = true;
                    setState(() {});
                    _auth.verifyPhoneNumber(
                        phoneNumber: "$code${phoneNumberController.text}",
                        verificationCompleted: (_) {
                          setState(() {
                            loading = false;
                          });
                        },
                        verificationFailed: (e) {
                          setState(() {
                            loading = false;
                          });
                          Get.snackbar("Error", "Something wrong");
                        },
                        codeSent: (String verificationId, int? token) {
                          setState(() {
                            loading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerifyYourPin()));
                        },
                        codeAutoRetrievalTimeout: (e) {
                          setState(() {
                            loading = false;
                          });
                          Get.snackbar("Error", "Something wrong");
                        });}else{
                    Get.snackbar("Empty", "Please enter something");
                  }
                },
            ),
          ],
        ),
      ),
    );
  }
}
