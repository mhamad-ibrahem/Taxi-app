import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Local/Core/Constant/Colors.dart';

warningAuthDialog(String subTitle) {
  Get.defaultDialog(
      title: 'Warning',
      middleText: subTitle,
      middleTextStyle: const TextStyle(
          color: AppColor.black, fontSize: 17, fontWeight: FontWeight.w500),
      titleStyle: const TextStyle(
          color: AppColor.red, fontSize: 24, fontWeight: FontWeight.bold));
}
