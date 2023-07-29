import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';
import '../../../Data/Model/Country/countryModel.dart';
import '../../../Data/static/countryData.dart';

abstract class ForgetPasswordController extends GetxController {
  goToOtp();
  goToSignIn();
  checkValid();
  changeCounty(Country country);
}

class ForgetPasswordImplement extends ForgetPasswordController {
  final TextEditingController phone = TextEditingController();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  bool isActive = false;
  List<CountryModel> countryList = countryData;
  String? countryImage;
  String countryCode = '963';
  @override
  checkValid() {
    var formData = formKey1.currentState;
    if (formData!.validate()) {
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
  changeCounty(country) {
    countryCode = country.phoneCode;
    countryImage = country.flagEmoji;
    update();
  }
}
