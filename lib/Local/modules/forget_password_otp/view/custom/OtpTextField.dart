import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../controller/ForgetPasswordOtp.dart';

class OtpField extends GetView<ForgetPasswordOtpImplement> {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      fieldWidth: 45.w,
      textStyle: Theme.of(context).textTheme.headline1,
      borderRadius: BorderRadius.circular(18),
      margin: const EdgeInsets.only(right: 10),
      decoration: const InputDecoration(disabledBorder: InputBorder.none),
      showCursor: false,
      autoFocus: true,
      focusedBorderColor: AppColor.black,
      showFieldAsBox: true,
      keyboardType: TextInputType.number,
      onSubmit: (value) => controller.goToRestPassword(),
    );
  }
}
