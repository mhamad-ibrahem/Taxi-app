import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Constant/Colors.dart';
import '../../Core/Constant/fonts.dart';


class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Get.back();
        },
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back_outlined,
              color: AppColor.white,
              size: 26,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: buttonTextStyle().copyWith(fontSize: 19),
            )
          ],
        ));
  }
}
