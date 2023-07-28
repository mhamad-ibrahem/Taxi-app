import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/Colors.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../../../View/Widget/CustomButton.dart';
import '../controller/PaymentAuth.dart';
import 'custom/ConstPaymentText.dart';
import 'custom/paymentCardBody.dart';

class PaymentCardScreen extends GetView<PaymentAuthImplement> {
  const PaymentCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PaymentAuthImplement());
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: const PaymentCardBody(),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ConstPaymentText(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      controller.scanCreditCard();
                    },
                    icon: const Icon(
                      Icons.photo_camera_outlined,
                      color: AppColor.darkGrey,
                    )),
                Text(
                  "Scan Credit Card",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.darkGrey, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GetBuilder<PaymentAuthImplement>(
              builder: (controller) => CustomButton(
                  onPressed: controller.isActive == false
                      ? null
                      : () {
                          controller.goToDocument();
                        },
                  title: "Continue"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
