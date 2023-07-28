import 'package:flutter/material.dart';

import '../../../../../Local/Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Finding Trips",
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 21),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Opportunity Nearby",
              style: greenTextStyle().copyWith(fontSize: 19),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "More requests than usaual",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ));
  }
}
