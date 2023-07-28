import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import '../../../Local/Core/Constant/Colors.dart';

void openAuthDialog(BuildContext context, String subTitle) {
  AwesomeDialog(
    context: context,
    title: 'Warning',
    dialogType: DialogType.error,
    animType: AnimType.scale,
    titleTextStyle: const TextStyle(
        color: AppColor.red, fontSize: 24, fontWeight: FontWeight.bold),
    descTextStyle: const TextStyle(
        color: AppColor.black, fontSize: 17, fontWeight: FontWeight.w500),
    desc: subTitle,
  ).show();
}
