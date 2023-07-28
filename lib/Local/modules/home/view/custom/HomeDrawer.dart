import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/imageAsset.dart';
import '../../../../View/Widget/CustomTextDrawerbutton.dart';
import '../../controller/HomeController.dart';

class HomeDrawer extends GetView<HomeControllerImplement> {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: AppColor.white,
              child: Image.asset(AppImageAsset.profileImage),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning,\n",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "Azar Nemanli",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            )
          ],
        ),
        const Divider(),
        CustomTextDrawerbutton(
            onPressed: () {
              controller.goToProfile();
            },
            title: "Profile"),
        CustomTextDrawerbutton(
            onPressed: () {
              controller.goToRaideHistory();
            },
            title: "Ride History"),
        CustomTextDrawerbutton(
            onPressed: () {
              controller.goToChate();
            },
            title: "Message"),
        CustomTextDrawerbutton(
            onPressed: () {
              controller.goToSettings();
            },
            title: "Settings"),
        CustomTextDrawerbutton(
            onPressed: () {
              controller.goToSupport();
            },
            title: "Support"),
      ],
    );
  }
}
