import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

class StartController extends GetxController {
  goToSignUp() {
    Get.offAllNamed(AppRoute.signUp);
  }

  goToSignIn() {
    Get.offAllNamed(AppRoute.signIn);
  }
}
