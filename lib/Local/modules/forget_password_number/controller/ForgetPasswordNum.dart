import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';
import '../../../Data/Model/Country/countryModel.dart';
import '../../../Data/static/countryData.dart';

abstract class ForgetPasswordController extends GetxController {
  goToOtp();
  goToSignIn();
  checkValid();
  changeCounty(List<CountryModel> country, int i);
}

class ForgetPasswordImplement extends ForgetPasswordController {
  final TextEditingController phone = TextEditingController();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  bool isActive = false;
  List<CountryModel> countryList = countryData;
  String? countryImage;
  String? countryCode;
  @override
  checkValid() {
    var formData = formKey1.currentState;
    if (formData!.validate() && countryCode != null) {
      isActive = true;
      update();
    } else {
      isActive = false;
      update();
    }
  }

  @override
  goToOtp() {
    checkValid();
    if (isActive == true) {
      Get.offNamed(AppRoute.forgetPasswordOtp);
    }
  }

  @override
  goToSignIn() {
    Get.back();
  }

  @override
  changeCounty(country, i) {
    countryCode = country[i].code;
    countryImage = country[i].image;
    checkValid();
    Get.back();
    print(countryCode);
    print(countryImage);
    update();
  }

  @override
  void onInit() {
    countryCode = countryList[0].code;
    countryImage = countryList[0].image;
    super.onInit();
  }
}
