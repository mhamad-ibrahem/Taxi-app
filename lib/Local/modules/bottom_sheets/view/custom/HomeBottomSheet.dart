import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/ScreenSize.dart';
import '../../../../Core/Constant/fonts.dart';
import '../../../../Core/Constant/imageAsset.dart';
import '../../../home/controller/HomeController.dart';

class HomeBottomSheet extends StatelessWidget {
  HomeBottomSheet({super.key});
  final HomeControllerImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHight * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "You’re Offline",
            style: redTexttyle(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: AppColor.white,
                    child: Image.asset(AppImageAsset.profileImage),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Azar Nemanli",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_border_purple500_sharp,
                            color: AppColor.greenPrimary,
                          ),
                          Text(
                            "4,75",
                            style: smallGreenTextStyle(12),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  controller.searchForRaider();
                },
                child: CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: AppColor.greenPrimary,
                  child: Text(
                    "Go",
                    style: buttonTextStyle(),
                  ),
                ),
              )
            ],
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
                    Icons.check_circle_sharp,
                    color: AppColor.greenPrimary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "95.0%",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Acceptance",
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
                    "4.75",
                    style: Theme.of(context).textTheme.headline2,
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
                    "2.0%",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Cancelleation",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
