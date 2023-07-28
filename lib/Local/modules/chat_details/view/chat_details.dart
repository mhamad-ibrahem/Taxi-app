import 'package:flutter/material.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/ScreenSize.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import 'custom/chat_form.dart';
import 'custom/chat_massege.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key});
  @override
  Widget build(BuildContext context) {
    List chatList = [
      ["Lorem Ipsum is simply dummy\ntext of the printin", true],
      ["Lorem Ipsum is simply dummy", false],
    ];
    return CustomStackAuthPage(
      backButtonTitle: "BACK",
      stackWidget: Container(
          margin: const EdgeInsets.only(top: 130),
          height: AppSize.screenHight * 0.7,
          width: AppSize.screenWidth * 0.86,
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(12)),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TODAY",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior(),
                      child: GlowingOverscrollIndicator(
                        color: AppColor.lgreen,
                        axisDirection: AxisDirection.down,
                        child: ListView.separated(
                          itemCount: chatList.length,
                          itemBuilder: (context, index) => ChatMessage(
                              title: chatList[index][0],
                              isRecive: chatList[index][1]),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ChatForm(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )),
      widget: const SizedBox(),
    );
  }
}
