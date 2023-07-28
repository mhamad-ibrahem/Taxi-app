import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/Colors.dart';
import '../../../Core/Constant/fonts.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../controller/RideHistoryController.dart';
import 'custom/TodayRideBody.dart';

class TodayRide extends StatelessWidget {
  TodayRide({super.key});
  final RideHistoryImplement controller = Get.put(RideHistoryImplement());
  @override
  Widget build(BuildContext context) {
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: TodayRideBody(),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.rideList.length,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        controller.goToRideDetails(controller.rideList[index]);
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    controller.rideList[index].time,
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    controller.rideList[index].name,
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                ],
                              ),
                              Text(
                                "\$${controller.rideList[index].price}",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                margin: const EdgeInsets.only(top: 9),
                                decoration: const BoxDecoration(
                                  color: AppColor.grey,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(12),
                                      right: Radius.circular(12)),
                                ),
                                child: Text(
                                  "AM",
                                  style: buttonTextStyle()
                                      .copyWith(color: AppColor.darkGrey),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Text(
                                controller.rideList[index].paymentMethod,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: AppColor.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                separatorBuilder: (BuildContext context, int index) => Divider(
                      color: AppColor.grey,
                      thickness: 1.2,
                      indent: 80.w,
                      endIndent: 10,
                    )),
          )
        ]),
      ),
    );
  }
}
