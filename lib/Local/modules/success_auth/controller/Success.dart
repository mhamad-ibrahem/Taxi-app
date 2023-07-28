import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

class SuccessController extends GetxController {
  goToHome() {
    Get.offAllNamed(AppRoute.home);
  }
}
