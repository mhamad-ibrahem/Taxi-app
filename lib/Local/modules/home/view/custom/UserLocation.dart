import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';

class UserLocationScreen extends StatelessWidget {
  const UserLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 70,
      top: 200,
      child: CircleAvatar(
        backgroundColor: AppColor.greenPrimary.withOpacity(0.25),
        maxRadius: 44,
        child: CircleAvatar(
          backgroundColor: AppColor.greenPrimary.withOpacity(0.5),
          maxRadius: 33,
          child: CircleAvatar(
            backgroundColor: AppColor.greenPrimary.withOpacity(1),
            maxRadius: 22,
            child: CircleAvatar(
              backgroundColor: AppColor.white,
              maxRadius: 13,
              child: CircleAvatar(
                backgroundColor: AppColor.greenPrimary.withOpacity(1),
                maxRadius: 8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
