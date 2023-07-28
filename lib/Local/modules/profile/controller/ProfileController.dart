import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/routes.dart';

class ProfileController extends GetxController {
  late Future<DocumentSnapshot<Map<String, dynamic>>> users;
  logOut() {
    Get.offAllNamed(AppRoute.start);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
