import 'package:flutter/material.dart';

import '../../Core/Constant/Colors.dart';

class CustomForm extends StatelessWidget {
  const CustomForm(
      {super.key,
      required this.prefixWidget,
      required this.title,
      required this.controller,
      required this.inputType,
      required this.obscure,
      this.validator,
      this.isPadding,
      this.onChanged,
      this.onFieldSubmitted});
  final Widget? prefixWidget;
  final String title;
  final TextEditingController? controller;
  final TextInputType inputType;
  final bool obscure;
  final String? Function(String?)? validator;
  final bool? isPadding;
  final Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscure,
        keyboardType: inputType,
        controller: controller,
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 19),
        decoration: InputDecoration(
          fillColor: AppColor.black,
          label: Padding(
            padding: isPadding == null
                ? const EdgeInsets.only(bottom: 8.0)
                : const EdgeInsets.only(bottom: 0.0),
            child: Text(title, style: Theme.of(context).textTheme.headline3),
          ),
          errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.red, width: 3)),
          labelStyle:
              Theme.of(context).textTheme.headline3!.copyWith(fontSize: 16),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.greenPrimary, width: 3)),
          prefixIcon: prefixWidget,
        ));
  }
}
