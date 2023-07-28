import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../../personal_sign_up/view/custom/CircleUserPhoto.dart';
import '../controller/ProfileController.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return CustomStackAuthPage(
      backButtonTitle: "MyAccount",
      stackWidget: const Padding(
        padding: EdgeInsets.only(top: 110),
        child: CircleUserPhoto(enableChange: false),
      ),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Business',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Ali Kh',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "4,75",
                style: greenTextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total trips:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1534",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$162,25",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Years:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2,5",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              ListTile(
                title: Text(
                  "Phone",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 15),
                ),
                trailing: Text(
                  '966769532',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 15),
                ),
              ),
              ListTile(
                title: Text(
                  "Language",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 15),
                ),
                trailing: Text(
                  "Azerbaijani, English",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  controller.logOut();
                },
                minWidth: AppSize.screenWidth,
                height: 50,
                color: AppColor.greenPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Log Out",
                  style: buttonTextStyle(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
      ),
    );
  }
}
