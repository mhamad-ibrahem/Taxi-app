import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

abstract class PaymentAuthController extends GetxController {
  scanCreditCard();
  goToDocument();
  checkValid();
}

class PaymentAuthImplement extends PaymentAuthController {
  final TextEditingController crediteNumber = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController cvc2 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isActive = false;
  @override
  checkValid() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      isActive = true;
      update();
    } else {
      isActive = false;
      update();
    }
  }

  @override
  goToDocument() {
    checkValid();
    if (isActive == true) {
      Get.offAllNamed(AppRoute.signUpDocument, arguments: {
        "name": Get.arguments['name'],
        "address": Get.arguments['address'],
        "phone number": Get.arguments['phone number'],
        "image": Get.arguments['phone number'],
        "password": Get.arguments['password'],
      });
    }
  }

  @override
  scanCreditCard() {}
}
