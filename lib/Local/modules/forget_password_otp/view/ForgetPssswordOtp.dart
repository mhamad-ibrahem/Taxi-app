import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/ForgetPasswordOtp.dart';
import 'custom/OtpTextField.dart';
import 'custom/OtpTopText.dart';

class ForgetPssswordOtp extends StatelessWidget {
  ForgetPssswordOtp({super.key});
  final ForgetPasswordOtpImplement controller =
      Get.put(ForgetPasswordOtpImplement());
  @override
  Widget build(BuildContext context) {
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GetBuilder<ForgetPasswordOtpImplement>(
              builder: (controller) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const OtpTopPart(),
                        const OtpField(),
                        const SizedBox(
                          height: 30,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '  Resend Code in  ',
                            style: Theme.of(context).textTheme.headline1,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${controller.times} seconds',
                                  style: greenTextStyle()),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        CustomButton(
                            onPressed: controller.activitButton == false
                                ? null
                                : () => controller.reSendOtp(),
                            title: "Resend")
                      ])),
        ));
  }
}
