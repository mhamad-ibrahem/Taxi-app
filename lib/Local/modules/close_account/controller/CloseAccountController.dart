import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

class CloseAccountController extends GetxController {
  final TextEditingController reson = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  closeAccount() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      Get.offAllNamed(AppRoute.start);
    }
  }
}
