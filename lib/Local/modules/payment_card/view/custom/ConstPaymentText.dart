import 'package:flutter/material.dart';
import '../../../../Core/Constant/Colors.dart';

class ConstPaymentText extends StatelessWidget {
  const ConstPaymentText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By continuing, I confirm that i have read & agree to the\n',
        style: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: AppColor.darkGrey),
        children: <TextSpan>[
          TextSpan(
              text: 'Terms & conditions ',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 12)),
          const TextSpan(
            text: 'and ',
          ),
          TextSpan(
              text: "Privacy Policy",
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}
