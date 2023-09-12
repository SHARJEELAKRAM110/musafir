
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/screens/OnBoardingScreens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200.h,),
          Center(child: Image.asset("assets/images/logoM.png",height: 226.h,width: 186.w,)),
SizedBox(height: 80.h,),
            Expanded(child: Image.asset("assets/images/splachSbottom.png",width: double.infinity,height: 237.h,fit:BoxFit.fill,))
          ],

      ),
    );
  }
}
