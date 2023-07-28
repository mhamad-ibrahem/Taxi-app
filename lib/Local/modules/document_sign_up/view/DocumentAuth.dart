import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/DocumentController.dart';
import 'custom/DocumentCardBody.dart';

class DocumentAuthScreen extends GetView<DocumentImplement> {
  const DocumentAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DocumentImplement());
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: const DocumentCardBody(),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<DocumentImplement>(
            builder: (controller) => Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: controller.acceptTerm,
                            activeColor: AppColor.greenPrimary,
                            onChanged: (val) {
                              controller.acceptTerms(val!);
                            }),
                        SizedBox(
                          width: AppSize.screenWidth * 0.7,
                          height: 40,
                          child: FittedBox(
                            child: RichText(
                              text: TextSpan(
                                text:
                                    'By continuing, I confirm that i have read & agree to the\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(color: AppColor.darkGrey),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Terms & conditions ',
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
                                          .copyWith(fontSize: 12)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        onPressed: () {
                          controller.goToSuccessAuth(context);
                        },
                        title: "Create Account"),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )),
      ),
    );
  }
}
