import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

enum Role { client, driver }

extension RoleType on Role {
  String get title {
    switch (this) {
      case Role.client:
        return 'client';
      case Role.driver:
        return 'driver';
    }
  }
}

abstract class SignUpPersonalController extends GetxController {
  changeToBUisnnes();
  goToSuccessAuth();
  checkValid();
  changeToFree();
  goToBuisnnes();
}

class SignUpPersonalImplement extends SignUpPersonalController {
  bool isActive = false;
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController address = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  bool isBusnisse = false;
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
  changeToBUisnnes() {
    isBusnisse = true;
    update();
  }

  @override
  changeToFree() {
    isBusnisse = false;
    update();
  }

  @override
  goToBuisnnes() {
    checkValid();
    if (isActive == true) {
      Get.toNamed(AppRoute.signUpBanckCard, arguments: {
        "name": firstName.text + lastName.text,
        "address": address.text,
        "phone number": "+963 966769532",
        "image": "",
        "password": password.text,
      });
    }
  }

  @override
  goToSuccessAuth() {
    checkValid();
    if (isActive == true) {
      Get.offAllNamed(AppRoute.successAuth);
    }
  }
}
