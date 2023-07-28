import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 19),
        cursorColor: AppColor.greenPrimary,
        decoration: InputDecoration(
            constraints: const BoxConstraints(maxHeight: 70),
            fillColor: AppColor.white,
            filled: true,
            disabledBorder:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(12)),
            border: InputBorder.none,
            hintText: "Search.....",
            hintStyle: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.w400),
            prefixIcon: IconButton(
                onPressed: () {
                  print("search");
                },
                icon: const Icon(
                  Icons.search_rounded,
                  color: AppColor.darkGrey,
                ))),
      ),
    );
  }
}
