import 'package:flutter/material.dart';

import '../../../../Local/Core/Constant/Colors.dart';
import '../Widget/CustomBackButton.dart';

class CustomAuthPage extends StatelessWidget {
  const CustomAuthPage(
      {super.key, required this.backButtonTitle, required this.widget});
  final String backButtonTitle;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.topLeft,
                color: AppColor.greenPrimary,
                height: 250,
                child: CustomBackButton(
                  title: backButtonTitle,
                ),
              ),
            ),
            widget
          ],
        ),
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height - 70)
      ..quadraticBezierTo(
          size.width / 6, size.height - 35, size.width / 3, size.height - 35)
      ..quadraticBezierTo(
          3 / 4 * size.width, size.height - 39, size.width, size.height - 117)
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
