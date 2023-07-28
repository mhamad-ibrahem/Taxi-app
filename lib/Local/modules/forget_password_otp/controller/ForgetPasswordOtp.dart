import 'dart:async';
import 'package:get/get.dart';

import '../../../Core/Constant/routes.dart';

abstract class ForgetPasswordOtpController extends GetxController {
  reSendOtp();
  goToRestPassword();
  startTimer(int seconds);
}

class ForgetPasswordOtpImplement extends ForgetPasswordOtpController {
  String number = "+994 10 999 00 00";
  Timer? timer;
  int remainingSeconds = 1;
  int times = 10;
  bool activitButton = false;
  @override
  goToRestPassword() {
    Get.offNamed(AppRoute.resetPasswordPage);
  }

  @override
  reSendOtp() {
    startTimer(10);
  }

  @override
  startTimer(seconds) {
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times = remainingSeconds;
        activitButton = true;
        time.cancel();
        update();
      } else {
        times = remainingSeconds;
        remainingSeconds--;
        activitButton = false;
        update();
      }
    });
    update();
  }

  @override
  void onReady() {
    startTimer(10);
    super.onReady();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }
}
