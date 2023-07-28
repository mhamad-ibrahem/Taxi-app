import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  checkValid();
  goToSignIn();
}

class ResetPasswordImplement extends ResetPasswordController {
  TextEditingController password = TextEditingController();
  TextEditingController resetPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isActive = false;
  @override
  checkValid() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      isActive = true;
      update();
      print(isActive);
      print(password.text);
      print(resetPassword.text);
    } else {
      isActive = false;
      update();
    }
  }

  @override
  goToSignIn() {
    checkValid();
    if (isActive == true) {
      Get.offAllNamed(AppRoute.signIn);
    }
  }
}
