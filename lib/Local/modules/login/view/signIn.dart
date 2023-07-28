import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Class/HandilingData.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../../../View/Widget/TextButton.dart';
import '../controller/SignInController.dart';
import 'custom/SignInForm.dart';

class SignInScreen extends GetView<SignInImplement> {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SignInImplement());
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return CustomAuthPage(
      backButtonTitle: "WELCOME",
      widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GetBuilder<SignInImplement>(
            builder: (controller) => HandilingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    " Welcome back!",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignInForm(formKey: formKey),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextButton(
                      onPressed: () {
                        controller.goToForgetPassword();
                      },
                      title: "Forgot password?"),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      onPressed: controller.isActive == false
                          ? null
                          : () {
                              controller.logIn(context);
                            },
                      title: "Login"),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextButton(
                      onPressed: () {
                        controller.goToSignUp();
                      },
                      title: "Or Create Account")
                ],
              ),
            ),
          )),
    );
  }
}
