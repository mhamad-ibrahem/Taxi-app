import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/functions/Validation.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/ScreenSize.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/CustomAuthPage.dart';
import '../../../View/Widget/CustomForm.dart';
import '../controller/CloseAccountController.dart';

class CloseAcount extends GetView<CloseAccountController> {
  const CloseAcount({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CloseAccountController());
    return CustomAuthPage(
      backButtonTitle: "Back",
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "Close My Account",
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: controller.formKey,
              child: CustomForm(
                  isPadding: false,
                  prefixWidget: null,
                  title: "Why?",
                  controller: controller.reson,
                  inputType: TextInputType.name,
                  validator: (value) {
                    return validation(value!, 5, 100, "name");
                  },
                  obscure: false),
            ),
            const SizedBox(
              height: 60,
            ),
            MaterialButton(
              onPressed: () {
                controller.closeAccount();
              },
              minWidth: AppSize.screenWidth,
              height: 50,
              color: AppColor.greenPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "Log Out",
                style: buttonTextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
