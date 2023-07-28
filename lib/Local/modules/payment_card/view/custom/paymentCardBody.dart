import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../../Global/Core/functions/Validation.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../View/Widget/CustomForm.dart';
import '../../controller/PaymentAuth.dart';

class PaymentCardBody extends GetView<PaymentAuthImplement> {
  const PaymentCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 130),
      width: AppSize.screenWidth * 0.9,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomForm(
                    isPadding: false,
                    prefixWidget: SizedBox(
                      width: AppSize.screenWidth * 0.2,
                    ),
                    title: "XXXX   XXXX    XXXX ",
                    controller: controller.crediteNumber,
                    inputType: TextInputType.number,
                    validator: (value) {
                      return validation(value!, 16, 16, "number");
                    },
                    onChanged: (val) {
                      controller.checkValid();
                    },
                    obscure: true),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "MONTH/YEAR",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: AppColor.darkGrey),
                  ),
                  Text(
                    "CVC2/CVV2",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: AppColor.darkGrey),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomForm(
                          isPadding: false,
                          prefixWidget: SizedBox(
                            width: AppSize.screenWidth * 0.1,
                          ),
                          title: "XX/XX",
                          controller: controller.date,
                          inputType: TextInputType.number,
                          validator: (value) {
                            return validation(value!, 5, 5, "number");
                          },
                          onChanged: (val) {
                            controller.checkValid();
                          },
                          obscure: true),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomForm(
                          isPadding: false,
                          prefixWidget: SizedBox(
                            width: AppSize.screenWidth * 0.1,
                          ),
                          title: "XX/XX",
                          controller: controller.cvc2,
                          inputType: TextInputType.number,
                          validator: (value) {
                            return validation(value!, 5, 5, "number");
                          },
                          onChanged: (val) {
                            controller.checkValid();
                          },
                          obscure: true),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "       CARD OWNER",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
