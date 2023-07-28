import 'package:get/get.dart';

import '../controller/SignInController.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInImplement());
  }
}
