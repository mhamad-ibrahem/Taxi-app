import 'package:flutter/material.dart';

import '../../Core/Constant/fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: smallGreyTexttyle(),
      ),
    );
  }
}
