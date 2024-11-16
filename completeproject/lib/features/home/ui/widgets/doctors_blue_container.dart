import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 190.h,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/home_blue_pattern.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      textAlign: TextAlign.start,
                      "Book and\n schedule with\n nearest doctor",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  verticalSpace(16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                        // padding: EdgeInsets.symmetric(
                        //     vertical: 12.h, horizontal: 10.h),
                      ),
                      child: Text(
                        "Find Nearby",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: ColorsManger.primarycolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10.w,
            top: 0,
            child: Image.asset(
              'assets/images/homedocimage.png',
            ),
            height: 200.h,
          )
        ],
      ),
    );
  }
}
