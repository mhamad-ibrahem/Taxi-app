import 'package:flutter/material.dart';

import '../../../Global/Core/Constant/Size.dart';
import '../../Core/Constant/Colors.dart';
import '../../Core/Constant/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: AppColor.greenPrimary,
      disabledColor: AppColor.darkGrey,
      elevation: 3,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      minWidth: AppSize.screenWidth * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: buttonTextStyle(),
          ),
          const Icon(
            Icons.arrow_forward_rounded,
            color: AppColor.white,
            size: 30,
          )
        ],
      ),
    );
  }
}
