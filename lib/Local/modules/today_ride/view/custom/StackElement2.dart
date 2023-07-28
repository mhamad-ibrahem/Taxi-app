import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/fonts.dart';
import '../../controller/RideHistoryController.dart';

class StackElement2 extends StatelessWidget {
  StackElement2({super.key});
  final RideHistoryImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Mon, 16 Nov’19 - 22 Nov’19",
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 10,
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
            Text('154,75', style: Theme.of(context).textTheme.headline2)
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          child: GetBuilder<RideHistoryImplement>(
            builder: (controller) => ListView.builder(
                itemCount: controller.digramList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: controller.digramList[index].height,
                          width: AppSize.screenWidth * 0.09,
                          margin: const EdgeInsets.only(left: 12, bottom: 10),
                          decoration: BoxDecoration(
                              color: controller.digramList[index].isSelected ==
                                      false
                                  ? AppColor.grey
                                  : AppColor.greenPrimary,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(11),
                                  topRight: Radius.circular(11))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            controller.digramList[index].dayName,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        )
                      ],
                    )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('44',
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
                  Text('48:30',
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
                Text('\$154,75',
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
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
