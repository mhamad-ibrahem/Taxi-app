import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../../../Global/Core/functions/Validation.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Shared/country_picker.dart';
import '../../../View/Widget/CustomButton.dart';
import '../../../View/Widget/CustomForm.dart';
import '../../../View/Widget/TextButton.dart';
import '../controller/ForgetPasswordNum.dart';

class ForgetPasswordNumber extends GetView<ForgetPasswordImplement> {
  ForgetPasswordNumber({super.key});
  final ForgetPasswordImplement controller = Get.put(ForgetPasswordImplement());
  @override
  Widget build(BuildContext context) {
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "You have a problem?!",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Don’t worry!",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: controller.formKey1,
                child: GetBuilder<ForgetPasswordImplement>(
                  builder: (controller) => CustomForm(
                    controller: controller.phone,
                    inputType: TextInputType.number,
                    prefixWidget: CountryButtonPick(
                        countryCode: controller.countryCode,
                        countryImage: controller.countryImage,
                        onSelect: (country) {
                          controller.changeCounty(country);
                        }),
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
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextButton(
                  onPressed: () {
                    controller.goToSignIn();
                  },
                  title: "No problem? Sign In"),
              const SizedBox(
                height: 60,
              ),
              GetBuilder<ForgetPasswordImplement>(
                builder: (controller) => CustomButton(
                    onPressed: controller.isActive == false
                        ? null
                        : () {
                            controller.goToOtp();
                          },
                    title: "Continue"),
              ),
            ],
          ),
        ));
  }
}
