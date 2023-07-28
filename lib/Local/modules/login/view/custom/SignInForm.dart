import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Global/Core/functions/Validation.dart';
import '../../../../../Global/Core/functions/showCountryDialog.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/fonts.dart';
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
                prefixWidget: GestureDetector(
                  onTap: () => showCountryDialog(controller.countryList, () {
                    controller.changeCounty(controller.countryList, 1);
                  }, 1),
                  child: SizedBox(
                    height: 40,
                    width: 120,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 30,
                          child: Image.asset(
                            controller.countryImage,
                          ),
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
                            controller.countryCode,
                            style: buttonTextStyle().copyWith(fontSize: 13),
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
                  if (val.isNotEmpty) controller.checkValid(formKey: formKey);
                },
                validator: (val) {
                  return validatePhone(
                      val!, controller.countryCode, controller.isActive);
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
