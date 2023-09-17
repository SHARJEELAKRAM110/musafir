import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musafir/Constants/Colors.dart';
import 'package:musafir/Widgets/CustomWidgets/custom_text.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchFilter = TextEditingController();
  double? ratingBarValue;

  bool showList = false;
  int _selectedValue = 1;
  List<TextImages> imageList = [
    TextImages(text: "Suzuki \nApv", image: "assets/images/pngwing 1.png"),
    TextImages(text: "Motorbike", image: "assets/images/pngwing 2.png"),
    TextImages(text: "car", image: "assets/images/carr.png"),
    TextImages(text: "Jeep", image: "assets/images/jeep.png"),
    TextImages(text: "Sedan", image: "assets/images/car.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bgWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
          child: Image.asset(
            "assets/images/Vector.png",
            height: 24.h,
            width: 24.w,
          ),
        ),
        title: CustomText(
          text: 'Welcome To Musafir App ',
          color: Color(0xFF1F2937),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: Icon(
                Icons.favorite_border,
                size: 24,
              )),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 24,
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: SizedBox(
                height: 48.h,
                width: 335.w,
                child: TextFormField(
                  cursorColor: AppColors().black,
                  controller: searchFilter,
                  onChanged: (String value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF4F3FD),
                    contentPadding: EdgeInsets.only(top: 1.h),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffB8B8D2),
                    ),
                    suffixIcon: SizedBox(
                      width: 80.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/delete-two.png",
                                height: 16.h,
                                width: 16.w,
                              )),
                          SizedBox(
                            width: 15.w,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/filter.png",
                                height: 20.h,
                                width: 21.w,
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                    hintText: 'Search......',
                    hintStyle:
                        TextStyle(color: Color(0x991F1F39), fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  text: 'Booking Category',
                  color: Color(0xFF1F2937),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        showList = !showList;
                      });
                    },
                    child: Icon(
                      showList
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 24.sp,
                    )),
              ],
            ),
            Visibility(
              visible: showList,
              child: Container(
                height: 120.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 100.h,
                        width: 170.w,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 100.h,
                              width: 170.w,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide.none,
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: CustomText(
                                        text: imageList[index].text,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15.h,
                              left: 87.w,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    "assets/images/Rectangle 425.png",
                                    height: 86.h,
                                    width: 86.w,
                                  )),
                            ),
                            Positioned(
                              top: 14.h,
                              left: 78.w,
                              child: Image.asset(
                                imageList[index].image,
                                height: 70.h,
                                width: 90.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Container(
                    width: 159.w,
                    height: 47.h,
                    decoration: ShapeDecoration(
                      color: _selectedValue == 1
                          ? AppColors().blueMain
                          : Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          activeColor: AppColors().bgWhite,
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          value: 1,
                          groupValue: _selectedValue,
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = 1;
                            });
                          },
                        ),
                        CustomText(
                          text: 'I’m Passenger',
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 47.h,
                  decoration: ShapeDecoration(
                    color: _selectedValue == 2
                        ? AppColors().blueMain
                        : Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio(
                        activeColor: AppColors().bgWhite,
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.white),
                        value: 2,
                        groupValue: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = 2;
                          });
                        },
                      ),
                      CustomText(
                        text: 'I’m Driver',
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'recent',
                    color: Color(0xFF1F2937),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text: 'View All',
                    color: AppColors().blueMain,
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 334.w,
                        height: 128.h,
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8.w, 8.h, 0, 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.zero,
                                            bottomRight: Radius.zero,
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: "",
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              "assets/images/diver.png",
                                              height: 55.h,
                                              width: 50.w,
                                              fit: BoxFit.fill,
                                            ),
                                            height: 55.h,
                                            width: 50.w,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, -1),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) =>
                                                setState(() =>
                                                    ratingBarValue = newValue),
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber,
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: 3,
                                            unratedColor: Colors.grey[350],
                                            itemCount: 5,
                                            itemSize: 10,
                                            glowColor: Colors.yellow,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/Group.png",
                                              height: 9.h,
                                              width: 5.w,
                                            ),
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            CustomText(
                                              text: '14 mint age',
                                              color: Color(0xFF9CA3AF),
                                              fontSize: 7.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/images/car 1.png",
                                              height: 9.h,
                                              width: 5.w,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            CustomText(
                                              text: '3 Seats ',
                                              color: Color(0xFF9CA3AF),
                                              fontSize: 7.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Salahuddin',
                                          textAlign: TextAlign.center,
                                          color: Color(0xFF1F2937),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  size: 8,
                                                ),
                                                CustomText(
                                                  text: '11-Sep-2023',
                                                  color: Color(0xFF5A5A5A),
                                                  fontSize: 6,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time_rounded,
                                                  size: 8,
                                                ),
                                                CustomText(
                                                  text: '11-Sep-2023',
                                                  color: Color(0xFF5A5A5A),
                                                  fontSize: 6,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 10,
                                              color: AppColors().blueMain,
                                            ),
                                            CustomText(
                                              text: 'Current location',
                                              color: Color(0xFF4B5563),
                                              fontSize: 8.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:5.w),
                                          child: Container(
                                            width: 2, // Width of the vertical line
                                            child: CustomPaint(
                                              painter: VerticalDottedLinePainter(
                                                color:  Color(0xffF6BA02), // Customize the color
                                                strokeWidth: 1.0,   // Customize the stroke width
                                                gap: 2.0,           // Customize the gap between dots
                                                height: 17.h,       // Specify the height of the vertical line
                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w, vertical: 3.h),
                                          child: CustomText(
                                            text:
                                                '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                                            color: Color(0xFF9CA3AF),
                                            fontSize: 6,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 10,
                                              color: Color(0xffF6BA02),
                                            ),
                                            CustomText(
                                              text: 'To Office',
                                              color: Color(0xFF4B5563),
                                              fontSize: 8.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w, vertical: 3.h),
                                          child: CustomText(
                                            text:
                                                '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                                            color: Color(0xFF9CA3AF),
                                            fontSize: 6,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 41,
                                        height: 15,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF4AC3B4),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(2),
                                              bottomLeft: Radius.circular(2),
                                            ),
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            text: 'Out of City',
                                            color: Colors.white,
                                            fontSize: 6,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Image.asset(
                                          "assets/images/bigCar.png",
                                          height: 50.h,
                                          width: 100.w,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 30.w,
                                            ),
                                            Image.asset(
                                              "assets/images/fb.png",
                                              height: 11.h,
                                              width: 11.w,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Image.asset(
                                              "assets/images/whatsapp.png",
                                              height: 11.h,
                                              width: 11.w,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Image.asset(
                                              "assets/images/twitter.png",
                                              height: 11.h,
                                              width: 11.w,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class TextImages {
  String text;
  String image;

  TextImages({
    required this.text,
    required this.image,
  });
}

class VerticalDottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final double height;

  VerticalDottedLinePainter({
    this.color = Colors.black,
    this.strokeWidth = 2.0,
    this.gap = 5.0,
    this.height = 20.0, // Specify the height of the vertical line
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startY = 0;
    while (startY < height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + gap),
        paint,
      );
      startY +=
          gap * 2; // Adjust this multiplier to change the spacing between dots
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
