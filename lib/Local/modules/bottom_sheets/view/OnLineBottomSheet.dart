import 'package:flutter/material.dart';

import '../../../../../Local/Core/Constant/Colors.dart';
import '../../../../../Local/Core/Constant/ScreenSize.dart';
import '../../../../../Local/Core/Constant/fonts.dart';

class OnLineBottomSheet extends StatelessWidget {
  const OnLineBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: AppSize.screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: AppColor.white),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "You’re Online",
          style: greenTextStyle().copyWith(fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
