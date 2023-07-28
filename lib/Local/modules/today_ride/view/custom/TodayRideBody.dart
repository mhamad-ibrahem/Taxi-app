import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/Local/modules/today_ride/view/custom/stackElement1.dart';

import '../../../../../Global/Core/Constant/Size.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../controller/RideHistoryController.dart';
import 'StackElement2.dart';

class TodayRideBody extends StatelessWidget {
  TodayRideBody({super.key});
  final RideHistoryImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 130),
      width: AppSize.screenWidth * 0.9,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.changeSelected(0);
                        },
                        child: Text(
                          "Today",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.changeSelected(1);
                        },
                        child: Text(
                          "Weekly",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ],
                  )),
              GetBuilder<RideHistoryImplement>(
                builder: (controller) => AnimatedContainer(
                  height: 3,
                  margin: EdgeInsets.only(
                      top: 4, left: controller.padding, right: 10),
                  width: AppSize.screenWidth * 0.3,
                  duration: const Duration(seconds: 1),
                  decoration: BoxDecoration(
                    color: AppColor.greenPrimary,
                    border: Border.all(width: 2, color: AppColor.greenPrimary),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<RideHistoryImplement>(
                builder: (controller) => IndexedStack(
                  index: controller.selectedIndex,
                  children: [StackElement1(), StackElement2()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
