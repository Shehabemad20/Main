import 'package:completeproject/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle font32BlueBold = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: ColorsManger.primarycolor,
  );
  static TextStyle font13greyregular = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  );
  static TextStyle font14darkbluemedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsManger.darkblue,
  );
  static TextStyle font12darkbluemedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorsManger.primarycolor,
  );
  static TextStyle font16whitesemibold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle font24whitesemibold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle font24primarycolor = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: ColorsManger.primarycolor);
  static TextStyle font14greyregular = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: ColorsManger.lightgrey);

  static TextStyle font18darkbluebold = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: ColorsManger.darkblue,
  );
  static TextStyle font11greyregular = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: ColorsManger.lightergrey,
  );
}
