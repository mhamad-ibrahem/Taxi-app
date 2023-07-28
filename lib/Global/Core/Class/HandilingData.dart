import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../Local/Core/Constant/Colors.dart';
import '../../../Local/Core/Constant/fonts.dart';
import '../../../Local/Core/Constant/imageAsset.dart';
import 'StatusRequest.dart';

class HandilingDataView extends StatelessWidget {
  const HandilingDataView(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColor.greenPrimary,
          ))
        : statusRequest == StatusRequest.faliure
            ? Center(
                child: Text(
                "Faliur",
                style: greenTextStyle(),
              ))
            : statusRequest == StatusRequest.offlineFaliure
                ? Center(
                    child: Text(
                    "offline",
                    style: greenTextStyle(),
                  ))
                : statusRequest == StatusRequest.serverFaliure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.serverErrorImage,
                            width: 400, height: 400))
                    : widget;
  }
}

class HandilingDataRequest extends StatelessWidget {
  const HandilingDataRequest(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColor.greenPrimary,
          ))
        : widget;
  }
}
