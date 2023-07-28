import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/ResetPassword.dart';
import 'custom/ResetForm.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final ResetPasswordImplement controller = Get.put(ResetPasswordImplement());
  @override
  Widget build(BuildContext context) {
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "It’s very easy!",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const ResetForm(),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<ResetPasswordImplement>(
                  builder: (controller) => CustomButton(
                      onPressed: controller.isActive == false
                          ? null
                          : () => controller.goToSignIn(),
                      title: "Complate"),
                )
              ],
            ),
          ),
        ));
  }
}
