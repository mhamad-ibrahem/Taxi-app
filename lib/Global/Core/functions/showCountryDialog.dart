import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Local/Core/Constant/Colors.dart';
import '../../../Local/Core/Constant/ScreenSize.dart';
import '../../../Local/Data/Model/Country/countryModel.dart';
import '../../../Local/modules/forget_password_number/controller/ForgetPasswordNum.dart';
import '../../../Local/modules/login/controller/SignInController.dart';
import '../../../Local/modules/sign up/controller/SignUpController.dart';

SignInImplement controller = Get.find();
SignUpImplement signUpcontroller = Get.find();
ForgetPasswordImplement forgetPasswordController = Get.find();
showCountryDialog(
    List<CountryModel> countryList, VoidCallback onTap, int screen) {
  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(top: 20),
      height: AppSize.screenHight * 0.6,
      width: AppSize.screenWidth,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: ListView.separated(
        itemCount: countryList.length,
        itemBuilder: (context, index) => ListTile(
          leading: SizedBox(
              height: 30,
              width: 40,
              child: Image.asset(countryList[index].image)),
          title: Text(
            countryList[index].name,
            style: Theme.of(context).textTheme.headline4,
          ),
          trailing: Text(
            countryList[index].code,
            style: Theme.of(context).textTheme.headline4,
          ),
          onTap: () {
            screen == 1
                ? controller.changeCounty(countryList, index)
                : screen == 2
                    ? signUpcontroller.changeCounty(countryList, index)
                    : screen == 3
                        ? forgetPasswordController.changeCounty(
                            countryList, index)
                        : print("you need to choice screen 1 or 2 or 3");
          },
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
      ),
    ),
  );
}
