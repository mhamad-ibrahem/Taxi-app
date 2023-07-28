import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../home/controller/HomeController.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/ScreenSize.dart';
import '../../../../Core/Constant/fonts.dart';

class FindRiderSheet extends StatelessWidget {
  FindRiderSheet({super.key});
  final HomeControllerImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHight * 0.3,
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
          "31 min",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: MaterialButton(
            onPressed: () {
              controller.acceptDriver();
            },
            minWidth: AppSize.screenWidth,
            height: 40,
            color: AppColor.greenPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Text(
              "Tap To Accept",
              style: buttonTextStyle(),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.monetization_on_outlined,
                  color: AppColor.greenPrimary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "7.5",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Cash",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.stars,
                  color: AppColor.greenPrimary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "3.75",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Rating",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.cancel_presentation_sharp,
                  color: AppColor.greenPrimary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "4,8 km",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Ride",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
