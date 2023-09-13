import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Constants/Colors.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';

import 'create_account.dart';
import 'login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  List<String> statusList = [
    "Login",
    "Create Account",
  ];
  int index = 0;
  List<Widget> screens = [
    Login(),
    CreateAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Skip',
                    textAlign: TextAlign.center,
                    color: Color(0xFF4B5563),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              Image.asset(
                "assets/images/Group 1.png",
                height: 32.h,
                width: 128.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                text:
                    'Welcome back! Log in to continue enjoying the \nMusafir benefits.',
                textAlign: TextAlign.center,
                color: Color(0xFF4B5563),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors().bgWhite),
                height: 40.h,
                width: 331.w,
                child: ListView.builder(
                    itemCount: statusList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, ind) {
                      return InkWell(
                        onTap: () {
                          index = ind;
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SizedBox(
                            height: 30.h,
                            width: 150.w,
                            child: Container(
                              child: Center(
                                  child: Text(
                                statusList[ind],
                                style: TextStyle(
                                  color: AppColors().blueMain,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 2.h,
                      width: 165.w,
                      color:
                          index == 0 ? AppColors().blueMain : Colors.transparent,
                    ),
                    Container(
                      height: 2.h,
                      width: 165.w,
                      color:
                          index == 1 ? AppColors().blueMain : Colors.transparent,
                    ),
                  ],
                ),
                height: 2.h,
                width: 331.w,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              screens[index],
            ],
          ),
        ),
      ),
    );
  }
}
