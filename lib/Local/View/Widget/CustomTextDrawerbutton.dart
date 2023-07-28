import 'package:flutter/material.dart';

class CustomTextDrawerbutton extends StatelessWidget {
  const CustomTextDrawerbutton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            )),
        const Divider(),
      ],
    );
  }
}
