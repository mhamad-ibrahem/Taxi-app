import 'package:flutter/material.dart';

import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/ScreenSize.dart';

class AcceptSheet extends StatelessWidget {
  const AcceptSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHight * 0.1,
      width: AppSize.screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: AppColor.white),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "2 min",
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
