import 'package:cloud_firestore/cloud_firestore.dart';
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
  changeCounty(List<CountryModel> country, int i);
  getUser();
}

class SignUpImplement extends SignUpController {
  bool isActive = false;
  final TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<CountryModel> countryList = countryData;
  String? countryImage;
  String? countryCode;
  List<UserModel> usersList = [];
  late UserModel userModel;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  checkValid() {
    var formData = formKey.currentState;
    if (formData!.validate() && countryCode != null) {
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
        "phoneNumber": countryCode! + phone.text.trim(),
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
    countryImage = countryList[0].image;
    countryCode = countryList[0].code;
    super.onInit();
  }
}
