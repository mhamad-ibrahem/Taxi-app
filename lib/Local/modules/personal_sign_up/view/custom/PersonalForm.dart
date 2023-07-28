import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Global/Core/functions/Validation.dart';
import '../../../../View/Widget/CustomForm.dart';
import '../../controller/SignUpPersonal.dart';

class PersonalForm extends GetView<SignUpPersonalImplement> {
  const PersonalForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomForm(
                prefixWidget: null,
                title: "First name",
                controller: controller.firstName,
                inputType: TextInputType.name,
                onFieldSubmitted: (val) {
                  if (val.isNotEmpty) controller.checkValid();
                },
                validator: (val) {
                  return validation(val!, 1, 200, "");
                },
                obscure: false),
            const SizedBox(
              height: 10,
            ),
            CustomForm(
                prefixWidget: null,
                title: "Last name",
                controller: controller.lastName,
                inputType: TextInputType.name,
                onFieldSubmitted: (val) {
                  if (val.isNotEmpty) controller.checkValid();
                },
                validator: (val) {
                  return validation(val!, 1, 200, "");
                },
                obscure: false),
            const SizedBox(
              height: 10,
            ),
            CustomForm(
                prefixWidget: null,
                title: "Home addresse",
                controller: controller.address,
                inputType: TextInputType.name,
                onFieldSubmitted: (val) {
                  if (val.isNotEmpty) controller.checkValid();
                },
                validator: (val) {
                  return validation(val!, 1, 500, "");
                },
                obscure: false),
            const SizedBox(
              height: 10,
            ),
            CustomForm(
                prefixWidget: null,
                title: "Password",
                controller: controller.password,
                inputType: TextInputType.name,
                onFieldSubmitted: (val) {
                  if (val.isNotEmpty) controller.checkValid();
                },
                validator: (val) {
                  return validation(val!, 6, 40, "password");
                },
                obscure: true),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
