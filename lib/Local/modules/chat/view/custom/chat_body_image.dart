import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/imageAsset.dart';

class ChatBodyImage extends StatelessWidget {
  const ChatBodyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 80,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.only(left: 17, top: 5, bottom: 5, right: 3),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            AppImageAsset.chatImage,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          left: 53,
          top: 12,
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: AppColor.white,
            child: CircleAvatar(
              maxRadius: 5,
              backgroundColor: AppColor.greenPrimary,
            ),
          ),
        )
      ],
    );
  }
}
