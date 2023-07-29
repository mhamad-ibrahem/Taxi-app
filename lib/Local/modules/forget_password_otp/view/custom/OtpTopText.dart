import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/fonts.dart';
import '../../controller/ForgetPasswordOtp.dart';

class OtpTopPart extends GetView<ForgetPasswordOtpImplement> {
  const OtpTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          "Phone Verification",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Enter your OTP code",
          style: Theme.of(context).textTheme.headline2,
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text: 'Enter the 6-digit code sent to you at\n',
            style: Theme.of(context).textTheme.headline1,
            children: <TextSpan>[
              TextSpan(
                text: '${controller.number}. ',
              ),
              TextSpan(
                  text: "did you enter the correct\nnumber?",
                  style: greenTextStyle())
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
