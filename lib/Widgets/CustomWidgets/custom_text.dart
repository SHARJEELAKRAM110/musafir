import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomText extends StatelessWidget {
  String text;
  String? fontFamily = "Inter";
  FontWeight? fontWeight = FontWeight.w400;
  TextAlign? textAlign = TextAlign.start;
  Color? color = Colors.black;
  double? fontSize = 18;
  TextOverflow? textOverflow=TextOverflow.visible;

  CustomText(
      {super.key, required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
        this.textOverflow,
      this.fontFamily,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow:textOverflow,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize?.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,

      ),
    );
  }
}
