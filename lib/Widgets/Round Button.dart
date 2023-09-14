import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Constants/Colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key?key,
    this.buttonColor=const Color(0xff4AC3B4),
    this.textColor=Colors.white,
    required this.title,
    required this.onpress,
    this.height=49,
    this.width=335,
    this.loading=false,
    }):super(key:key);
final bool loading;
final String title;
final double height,width;
final VoidCallback onpress;
final Color textColor,buttonColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: Color(0xFF4AC3B4),
          borderRadius: BorderRadius.circular(20)
        ),
        child: loading?Center(child: CircularProgressIndicator()):
        Center(child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),)),

      ),
    );
  }
}
