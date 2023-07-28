import 'package:flutter/material.dart';

import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../Core/Constant/Colors.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({super.key, required this.title, required this.isRecive});
  final String title;
  final bool isRecive;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isRecive ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        isRecive
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: AppSize.screenWidth * 0.6,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: isRecive ? AppColor.lightGrey : AppColor.lgreen,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(isRecive ? 45 : 35),
                            bottomLeft: Radius.circular(isRecive ? 0 : 35),
                            topRight: Radius.circular(isRecive ? 35 : 45),
                            bottomRight: Radius.circular(isRecive ? 35 : 0)),
                      ),
                      child: Text(
                        title,
                        style: isRecive
                            ? Theme.of(context).textTheme.headline4
                            : Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("3:15 PM",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 12)),
                  )
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text("3:15 PM",
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 12)),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: AppSize.screenWidth * 0.6,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: isRecive ? AppColor.lightGrey : AppColor.lgreen,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(isRecive ? 45 : 35),
                            bottomLeft: Radius.circular(isRecive ? 0 : 35),
                            topRight: Radius.circular(isRecive ? 35 : 45),
                            bottomRight: Radius.circular(isRecive ? 35 : 0)),
                      ),
                      child: Text(
                        title,
                        style: isRecive
                            ? Theme.of(context).textTheme.headline4
                            : Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: AppColor.white),
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
