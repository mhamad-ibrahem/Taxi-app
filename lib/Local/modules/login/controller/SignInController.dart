import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/Local/Core/Constant/imageAsset.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../Core/Constant/routes.dart';
import '../../../Data/Model/Country/countryModel.dart';
import '../../../Data/static/countryData.dart';
import '../model/user_model.dart';

abstract class SignInController extends GetxController {
  goToSignUp();
  goToForgetPassword();
  logIn(BuildContext context);
  checkValid({required formKey});
  changeCounty(List<CountryModel> country, int i);
}

class SignInImplement extends SignInController {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  late Future<DocumentSnapshot<Map<String, dynamic>>> users;
  User? user = FirebaseAuth.instance.currentUser;
  bool isActive = false;
  List<CountryModel> countryList = countryData;
  List<UserModel> usersList = [];
  late UserModel userModel;
  String countryImage = AppImageAsset.syriaFlagImage;
  String countryCode = '+963';
  StatusRequest statusRequest = StatusRequest.none;
  @override
  void onInit() {
    // getUser();
    super.onInit();
  }

  @override
  checkValid({required formKey}) {
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
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPasswordNumber);
    phone.clear();
    password.clear();
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  logIn(context) async {
    if (isActive == true) {
      Get.toNamed(
        AppRoute.signInOtp,
        arguments: {
          "phoneNumber": countryCode + phone.text.trim(),
        },
      );
    }
  }

  @override
  changeCounty(country, i) {
    countryCode = country[i].code;
    countryImage = country[i].image;
    Get.back();
    update();
  }

  @override
  void dispose() {
    phone.clear();
    password.clear();
    super.dispose();
  }
}
