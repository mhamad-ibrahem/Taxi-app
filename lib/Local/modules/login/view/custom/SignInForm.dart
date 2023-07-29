import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Global/Core/functions/Validation.dart';
import '../../../../View/Shared/country_picker.dart';
import '../../../../View/Widget/CustomForm.dart';
import '../../controller/SignInController.dart';

class SignInForm extends GetView<SignInImplement> {
  const SignInForm({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            GetBuilder<SignInImplement>(
              builder: (controller) => CustomForm(
                controller: controller.phone,
                inputType: TextInputType.number,
                prefixWidget: CountryButtonPick(
                  countryCode: controller.countryCode,
                  countryImage: controller.countryImage,
                  onSelect: (country) {
                    controller.changeCounty(country);
                  },
                ),
                title: "",
                obscure: false,
                isPadding: false,
                onFieldSubmitted: (val) {
                  if (val.isNotEmpty) controller.checkValid(formKey: formKey);
                },
                validator: (val) {
                  return null;
                  // return validatePhone(
                  //     val!, controller.countryCode, controller.isActive);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomForm(
              controller: controller.password,
              inputType: TextInputType.name,
              prefixWidget: null,
              title: "Password",
              obscure: true,
              onFieldSubmitted: (val) {
                if (val.isNotEmpty) controller.checkValid(formKey: formKey);
              },
              validator: (val) {
                return validation(val!, 6, 40, "password");
              },
            ),
          ],
        ));
  }
}
