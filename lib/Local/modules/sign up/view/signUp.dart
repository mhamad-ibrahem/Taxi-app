import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/HandilingData.dart';
import '../../../../Global/Core/functions/Validation.dart';
import '../../../../Global/Core/functions/showCountryDialog.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../../../View/Widget/CustomForm.dart';
import '../controller/SignUpController.dart';

class SignUpScreen extends GetView<SignUpImplement> {
  SignUpScreen({super.key});
  final SignUpImplement controller = Get.put(SignUpImplement());
  @override
  Widget build(BuildContext context) {
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GetBuilder<SignUpImplement>(
            builder: (controller) => HandilingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Hello, nice to meet you!",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Join our Company!",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: controller.formKey,
                    child: CustomForm(
                      controller: controller.phone,
                      inputType: TextInputType.number,
                      prefixWidget: GestureDetector(
                        onTap: () =>
                            showCountryDialog(controller.countryList, () {
                          controller.changeCounty(controller.countryList, 1);
                        }, 2),
                        child: SizedBox(
                          height: 40,
                          width: 120,
                          child: Row(
                            children: [
                              SizedBox(
                                width: controller.countryCode != null ? 40 : 0,
                                height: controller.countryCode != null ? 30 : 0,
                                child: controller.countryCode != null
                                    ? Image.asset(
                                        controller.countryImage!,
                                      )
                                    : null,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: AppColor.black,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  controller.countryCode ?? "+963",
                                  style:
                                      buttonTextStyle().copyWith(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      title: "",
                      obscure: false,
                      isPadding: false,
                      onFieldSubmitted: (val) {
                        if (val.isNotEmpty) controller.checkValid();
                      },
                      validator: (val) {
                        return validation(val!, 9, 9, "phone");
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'By creating an account, you agree to our\n',
                      style: Theme.of(context).textTheme.headline1,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Terms of Service ',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 12)),
                        const TextSpan(
                          text: 'and ',
                        ),
                        TextSpan(
                            text: "Privacy Policy",
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 12))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomButton(
                      onPressed: controller.isActive == false
                          ? null
                          : () {
                              controller.goToOtp(context);
                            },
                      title: "Continue"),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
