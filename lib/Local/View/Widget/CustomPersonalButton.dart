import 'package:flutter/material.dart';

import '../../../Global/Core/Constant/Size.dart';
import '../../Core/Constant/Colors.dart';
import '../../Core/Constant/fonts.dart';

class CustomPersonalButton extends StatelessWidget {
  const CustomPersonalButton(
      {super.key,
      required this.onPressed,
      required this.isGreenStyle,
      required this.title});
  final VoidCallback onPressed;
  final bool isGreenStyle;
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: isGreenStyle == true ? AppColor.greenPrimary : AppColor.white,
      height: 50,
      minWidth: AppSize.screenWidth * 0.44,
      shape: isGreenStyle == false
          ? Border.all(color: AppColor.greenPrimary, width: 2)
          : null,
      child: Text(
        title,
        style: isGreenStyle == true
            ? buttonTextStyle()
            : buttonTextStyle().copyWith(color: AppColor.greenPrimary),
      ),
    );
  }
}
