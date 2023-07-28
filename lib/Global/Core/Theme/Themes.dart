import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Local/Core/Constant/Colors.dart';

class Themes {
  ThemeData currentTheme = Themes.lightsTheme;
  static ThemeData darksTheme = ThemeData.dark()
      .copyWith(appBarTheme: const AppBarTheme(color: Colors.white));
  static ThemeData lightsTheme = ThemeData.light().copyWith(
      // scaffoldBackgroundColor:AppColor. backColorLight,
      textTheme: TextTheme(
          headline1: TextStyle(
              color: AppColor.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
          headline2: TextStyle(
              color: AppColor.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold),
          headline3: TextStyle(
              color: AppColor.darkGrey,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold),
          headline4: TextStyle(
              color: AppColor.darkGrey,
              fontSize: 12.sp,
              fontFamily: 'muli',
              fontWeight: FontWeight.w400),
          headline5: TextStyle(
              color: AppColor.white,
              fontSize: 17.sp,
              fontFamily: 'muli',
              fontWeight: FontWeight.w900),
          headline6: TextStyle(
              // color: AppColor.grey,
              fontSize: 15.sp,
              fontFamily: 'muli',
              fontWeight: FontWeight.w600),
          caption: TextStyle(
              // color: AppColor.orange,
              fontSize: 15.sp,
              fontFamily: 'muli',
              fontWeight: FontWeight.bold)));
}
