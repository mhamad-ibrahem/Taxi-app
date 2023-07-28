import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Colors.dart';

//Colors Functions
TextStyle redTexttyle() {
  return TextStyle(
      color: AppColor.red,
      fontSize: 18.sp,
      fontFamily: 'muli',
      fontWeight: FontWeight.bold);
}

TextStyle smallGreyTexttyle() {
  return TextStyle(
      color: AppColor.darkGrey,
      fontSize: 14.sp,
      fontFamily: 'muli',
      fontWeight: FontWeight.w400);
}

TextStyle buttonTextStyle() {
  return TextStyle(
      color: AppColor.white,
      fontSize: 14.sp,
      fontFamily: 'muli',
      fontWeight: FontWeight.bold);
}

TextStyle greenTextStyle() {
  return TextStyle(
      color: AppColor.greenPrimary,
      fontSize: 15.sp,
      fontFamily: 'muli',
      fontWeight: FontWeight.w800);
}

TextStyle smallGreenTextStyle(double size) {
  // 12 or 14
  return TextStyle(
      color: AppColor.greenPrimary,
      fontSize: size.sp,
      fontFamily: 'muli',
      fontWeight: FontWeight.bold);
}
