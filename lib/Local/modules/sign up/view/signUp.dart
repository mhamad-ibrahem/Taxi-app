import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/HandilingData.dart';
// import '../../../../Global/Core/functions/Validation.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Shared/country_picker.dart';
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
                      prefixWidget: CountryButtonPick(
                        countryCode: controller.countryCode,
                        countryImage: controller.countryImage,
                        onSelect: (country) {
                          controller.changeCounty(country);
                          controller.checkValid();
                        },
                      ),
                      title: "",
                      obscure: false,
                      isPadding: false,
                      onFieldSubmitted: (val) {
                        if (val.isNotEmpty) controller.checkValid();
                      },
                      validator: (val) {
                        return null;
                        // return validatePhone(
                        //     val!, controller.countryCode, controller.isActive);
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
