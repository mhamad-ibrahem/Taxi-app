import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/HandilingData.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../../otp_sign_up/controller/sign_in_otp.dart';
import '../controller/sign_in_Otp.dart';

class SignInOtpScreen extends GetView<SignUpOtpImplement> {
  const SignInOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInOtpImplement());
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GetBuilder<SignInOtpImplement>(
            builder: (controller) => HandilingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Column(
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
                    OtpTextField(
                      numberOfFields: 6,
                      fieldWidth: 45.w,
                      textStyle: Theme.of(context).textTheme.headline1,
                      borderRadius: BorderRadius.circular(18),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const InputDecoration(
                          disabledBorder: InputBorder.none),
                      showCursor: false,
                      autoFocus: true,
                      focusedBorderColor: AppColor.black,
                      showFieldAsBox: true,
                      keyboardType: TextInputType.number,
                      onSubmit: (value) => controller.goToSignUpPersonal(value),
                    ),
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
                            : () {
                                controller.reSendOtp();
                              },
                        title: "Resend"),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ));
  }
}
