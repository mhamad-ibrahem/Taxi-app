import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/functions/Validation.dart';
import '../../../../Global/Core/functions/showCountryDialog.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/CustomAuthPage.dart';
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
                    prefixWidget: GestureDetector(
                      onTap: () =>
                          showCountryDialog(controller.countryList, () {
                        controller.changeCounty(controller.countryList, 1);
                      }, 3),
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
                      if (val.isNotEmpty) controller.checkValid();
                    },
                    validator: (val) {
                      return validatePhone(
                          val!, controller.countryCode!, controller.isActive);
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
