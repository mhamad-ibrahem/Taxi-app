import 'package:flutter/material.dart';
import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/fonts.dart';

class ChatForm extends StatelessWidget {
  const ChatForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.greenPrimary,
      controller: null,
      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 15),
      decoration: InputDecoration(
          hintText: "Type a message",
          hintStyle: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 15,
              ),
          border: InputBorder.none,
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.white, width: 2)),
          disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.white, width: 2)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.greenPrimary, width: 2)),
          suffixIcon: SizedBox(
            height: 30,
            width: AppSize.screenWidth * 0.3,
            child: MaterialButton(
              onPressed: () {},
              minWidth: 40,
              height: 30,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColor.lgreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Send",
                    style: buttonTextStyle(),
                  ),
                  const Icon(
                    Icons.send_rounded,
                    color: AppColor.white,
                  )
                ],
              ),
            ),
          )
          //  IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.send_rounded,
          //       color: AppColor.greenPrimary,
          //     )
          //     )
          ),
    );
  }
}
