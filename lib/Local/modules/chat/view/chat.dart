import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/routes.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import 'custom/chat_body.dart';
import 'custom/search_from.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: Container(
        height: AppSize.screenHight * 0.7,
        margin: const EdgeInsets.only(top: 130),
        width: AppSize.screenWidth * 0.86,
        decoration: BoxDecoration(
            color: AppColor.white, borderRadius: BorderRadius.circular(12)),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              const SearchForm(),
              Expanded(
                child: ScrollConfiguration(
                    behavior: const ScrollBehavior(),
                    child: GlowingOverscrollIndicator(
                        color: AppColor.lgreen,
                        axisDirection: AxisDirection.down,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                print("sdfsdfsdf");
                                Get.toNamed(AppRoute.chatDetails);
                              },
                              child: const ChatBody()),
                          separatorBuilder: (context, index) => const Divider(
                              color: AppColor.lightGrey,
                              thickness: 1.2,
                              endIndent: 5,
                              indent: 5),
                        ))),
              ),
            ],
          ),
        ),
      ),
      widget: const SizedBox(),
    );
  }
}
