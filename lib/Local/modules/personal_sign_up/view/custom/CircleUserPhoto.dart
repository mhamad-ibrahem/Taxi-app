import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/imageAsset.dart';

class CircleUserPhoto extends StatelessWidget {
  const CircleUserPhoto({super.key, required this.enableChange});
  final bool enableChange;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            AppImageAsset.profileImage,
            fit: BoxFit.cover,
          ),
        ),
        enableChange == true
            ? const Positioned(
                right: 90,
                height: 240,
                child: Icon(
                  Icons.photo_camera_outlined,
                  size: 70,
                  color: AppColor.darkGrey,
                ))
            : const Text("")
      ],
    );
  }
}
