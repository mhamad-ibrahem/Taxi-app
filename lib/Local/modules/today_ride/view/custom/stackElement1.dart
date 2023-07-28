import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/fonts.dart';
import '../../controller/RideHistoryController.dart';

class StackElement1 extends StatelessWidget {
  StackElement1({super.key});

  final RideHistoryImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          "Mon, 16 Nov’19",
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3, right: 6, bottom: 11),
              child: Text(
                '\$',
                style: greenTextStyle(),
              ),
            ),
            Text('54,75', style: Theme.of(context).textTheme.headline2)
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('15',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 19)),
                const SizedBox(
                  height: 8,
                ),
                Text('Trips', style: Theme.of(context).textTheme.headline4),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('8:30',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 19)),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Online hrs',
                      style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$22,48',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 19)),
                const SizedBox(
                  height: 8,
                ),
                Text('Cash Trip', style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
