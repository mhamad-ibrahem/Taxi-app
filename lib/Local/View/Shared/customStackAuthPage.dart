import 'package:flutter/material.dart';
import '../../../../Local/Core/Constant/Colors.dart';
import '../Widget/CustomBackButton.dart';
import 'CustomAuthPage.dart';

class CustomStackAuthPage extends StatelessWidget {
  const CustomStackAuthPage(
      {super.key,
      required this.backButtonTitle,
      required this.widget,
      required this.stackWidget});
  final String backButtonTitle;
  final Widget widget;
  final Widget stackWidget;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
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
                Center(child: stackWidget),
              ],
            ),
            widget
          ],
        ),
      ),
    ));
  }
}
