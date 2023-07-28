import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/imageAsset.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/StartController.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});
  final StartController controller = Get.put(StartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text("Hello, nice to meet you!",
                    style: Theme.of(context).textTheme.headline1),
                const SizedBox(
                  height: 10,
                ),
                Text("Get a new experience",
                    style: Theme.of(context).textTheme.headline2),
                SizedBox(
                  width: AppSize.screenWidth,
                  height: AppSize.screenHight * 0.58,
                  child: Image.asset(
                    AppImageAsset.startImages,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    onPressed: () {
                      controller.goToSignIn();
                    },
                    title: "Login with Phone"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
