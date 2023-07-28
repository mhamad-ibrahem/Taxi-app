import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/fonts.dart';
import '../../../../Core/Constant/imageAsset.dart';

class TopRowScreen extends StatelessWidget {
  const TopRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 6, bottom: 11),
              child: Text(
                '\$',
                style: greenTextStyle(),
              ),
            ),
            Text('54,75', style: Theme.of(context).textTheme.headline2)
          ],
        ),
        CircleAvatar(
          maxRadius: 30,
          backgroundColor: AppColor.white,
          child: Image.asset(AppImageAsset.profileImage2),
        ),
      ],
    );
  }
}
