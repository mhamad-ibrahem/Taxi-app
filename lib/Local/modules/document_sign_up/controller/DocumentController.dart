import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/functions/awesom_dialog.dart';
import '../../../Core/Constant/routes.dart';
import '../../../Data/static/DocumentData.dart';
import '../../../Data/Model/Document/DocumentModel.dart';
import '../../login/model/user_model.dart';

abstract class DocumentController extends GetxController {
  goToSuccessAuth(BuildContext context);
  acceptTerms(bool val);
}

class DocumentImplement extends DocumentController {
  List<DocumentModel> documentListData = documentList;
  bool acceptTerm = false;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  StatusRequest statusRequest = StatusRequest.none;
  UserModel userModel = UserModel(
      name: Get.arguments["name"],
      address: Get.arguments["address"],
      image: Get.arguments["image"],
      phoneNumber: Get.arguments["phone number"],
      password: Get.arguments["password"],
      role: "Driver");
  @override
  goToSuccessAuth(context) {
    if (acceptTerm == true) {
      Get.offAllNamed(AppRoute.successAuth);
    } else {
      openAuthDialog(context, "Accept all terms to continue");
    }
  }

  @override
  acceptTerms(val) {
    acceptTerm = val;
    if (acceptTerm == true) {
      documentListData[0].active = true;
      documentListData[1].active = true;
      documentListData[2].active = true;
      documentListData[3].active = true;
      documentListData[4].active = true;
    } else {
      documentListData[0].active = false;
      documentListData[1].active = false;
      documentListData[2].active = false;
      documentListData[3].active = false;
      documentListData[4].active = false;
    }
    update();
  }
}
