import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Global/Core/functions/Validation.dart';
import '../../../../View/Widget/CustomForm.dart';
import '../../controller/ResetPassword.dart';

class ResetForm extends GetView<ResetPasswordImplement> {
  const ResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomForm(
              prefixWidget: null,
              title: "New password",
              controller: controller.password,
              inputType: TextInputType.name,
              obscure: true,
              onChanged: (val) {
                controller.checkValid();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomForm(
                prefixWidget: null,
                title: "Confirm password",
                controller: controller.resetPassword,
                inputType: TextInputType.name,
                onChanged: (val) {
                  controller.checkValid();
                },
                validator: (val) {
                  return confirmValidate(
                      controller.password.text, controller.resetPassword.text);
                },
                obscure: true),
            const SizedBox(
              height: 70,
            ),
          ],
        ));
  }
}
