import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../Core/Constant/routes.dart';
import '../../../Data/Model/Country/countryModel.dart';
import '../../../Data/static/countryData.dart';
import '../../login/model/user_model.dart';

abstract class SignUpController extends GetxController {
  checkValid();
  goToOtp(BuildContext context);
  changeCounty(Country country);
  getUser();
}

class SignUpImplement extends SignUpController {
  bool isActive = false;
  final TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<CountryModel> countryList = countryData;
  String? countryImage;
  String countryCode = '963';
  List<UserModel> usersList = [];
  late UserModel userModel;
  StatusRequest statusRequest = StatusRequest.none;
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
  goToOtp(context) async {
    checkValid();
    getUser();
    if (isActive == true) {
      Get.toNamed(AppRoute.signUpOtp, arguments: {
        "phoneNumber": countryCode + phone.text.trim(),
      });
    }
  }

  @override
  getUser() async {
    QuerySnapshot userData =
        await FirebaseFirestore.instance.collection('users').get();
    userData.docs.forEach((doc) {
      var users = doc.data() as Map<String, dynamic>;
      userModel = UserModel.fromJson(users);
      usersList.add(userModel);
    });
  }

  @override
  changeCounty(country) {
    countryCode = country.phoneCode;
    countryImage = country.flagEmoji;
    log('$isActive');
    update();
  }
}
