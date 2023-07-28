import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../Core/Constant/routes.dart';

abstract class SignUpOtpController extends GetxController {
  reSendOtp();
  goToSignUpPersonal(String smsCode);
  startTimer(int seconds);
}

class SignUpOtpImplement extends SignUpOtpController {
  String number = Get.arguments["phoneNumber"];
  Timer? timer;
  int remainingSeconds = 1;
  int times = 10;
  bool activitButton = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  goToSignUpPersonal(smsCode) async {
    Get.offAllNamed(AppRoute.signUpPersonal,
        arguments: {"phoneNumber": number});
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
