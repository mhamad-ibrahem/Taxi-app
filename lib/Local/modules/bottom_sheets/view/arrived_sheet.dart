import 'package:flutter/material.dart';

import '../../../../../Local/Core/Constant/Colors.dart';
import '../../../../../Local/Core/Constant/ScreenSize.dart';
import '../../../../../Local/Core/Constant/imageAsset.dart';

class ArrivedSheet extends StatelessWidget {
  const ArrivedSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSize.screenHight * 0.1,
        width: AppSize.screenWidth,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: AppColor.white),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                children: [
                  Text(""),
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: AppColor.white,
                    child: Image.asset(AppImageAsset.profileImage),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
