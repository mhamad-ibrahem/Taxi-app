import 'package:flutter/material.dart';

import '../../../View/Shared/CustomAuthPage.dart';

class SignUpTerms extends StatelessWidget {
  const SignUpTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAuthPage(
        backButtonTitle: "Back",
        widget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "This trip was towards your destination you received\nGuaranteed fare",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                """Creating Terms of Use is an essential way 

to protect your company’s legal interests,

manage the use of your website or app,

and promote your business as a

professional and trustworthy

organization.

But it’s not easy to create a Terms of Use 

agreement that is clear, legally binding,

and relevant to your business.

We’re going to talk you through 

everything you need to include in your

Terms of Use agreement to make sure it’s 

an effective, useful, and professional-

looking legal agreement.""",
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
