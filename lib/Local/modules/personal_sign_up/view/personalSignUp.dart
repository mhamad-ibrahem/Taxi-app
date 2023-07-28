import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../../../View/Widget/CustomPersonalButton.dart';
import '../controller/SignUpPersonal.dart';
import 'custom/CircleUserPhoto.dart';
import 'custom/PersonalForm.dart';

class PersonalSignUpScreen extends StatelessWidget {
  PersonalSignUpScreen({super.key});
  final SignUpPersonalImplement controller = Get.put(SignUpPersonalImplement());
  @override
  Widget build(BuildContext context) {
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: const Padding(
          padding: EdgeInsets.only(top: 80),
          child: CircleUserPhoto(
            enableChange: true,
          )),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: GetBuilder<SignUpPersonalImplement>(
            builder: (controller) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomPersonalButton(
                      title: "Free",
                      onPressed: () {
                        controller.changeToFree();
                      },
                      isGreenStyle: controller.isBusnisse ? false : true,
                    ),
                    CustomPersonalButton(
                      title: 'Business',
                      onPressed: () {
                        controller.changeToBUisnnes();
                      },
                      isGreenStyle: controller.isBusnisse ? true : false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const PersonalForm(),
                const SizedBox(
                  height: 30,
                ),
                GetBuilder<SignUpPersonalImplement>(
                    builder: (controller) => CustomButton(
                        onPressed: controller.isActive == false
                            ? null
                            : () {
                                controller.isBusnisse
                                    ? controller.goToBuisnnes()
                                    : controller.goToSuccessAuth();
                              },
                        title: "Continue")),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
