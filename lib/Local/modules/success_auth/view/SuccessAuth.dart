import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/ScreenSize.dart';
import '../../../Core/Constant/imageAsset.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/Success.dart';

class SuccessAuthScreen extends GetView<SuccessController> {
  const SuccessAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SuccessController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text("Thank you!",
                    style: Theme.of(context).textTheme.headline2),
                const SizedBox(
                  height: 30,
                ),
                Text(
                    "Thank you for registering with Company.\n\nPlease complete your registration and be\n\nactivated by visiting our office.",
                    style: Theme.of(context).textTheme.headline1),
                SizedBox(
                  width: AppSize.screenWidth,
                  height: AppSize.screenHight * 0.58,
                  child: Image.asset(
                    AppImageAsset.startImages,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                CustomButton(
                    onPressed: () {
                      controller.goToHome();
                    },
                    title: "Go to Mian Screen"),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
