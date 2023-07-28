import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/Colors.dart';
import '../../../View/Shared/customStackAuthPage.dart';
import '../controller/RideDetails.dart';
import 'custom/StackBody.dart';

class RideDetails extends StatelessWidget {
  RideDetails({super.key});
  final RideDetailsImplement controller = Get.put(RideDetailsImplement());
  @override
  Widget build(BuildContext context) {
    return CustomStackAuthPage(
      backButtonTitle: "Back",
      stackWidget: StackBody(),
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Time:",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: AppColor.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    controller.rideModel!.tripTime,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price:",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: AppColor.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$${controller.rideModel!.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Distance:",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: AppColor.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    controller.rideModel!.distance,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date & Time",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                controller.rideModel!.date,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service Type",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                controller.rideModel!.serviceType,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trip Type",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                controller.rideModel!.tripType,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Text(
            "This trip was towards your destination you received\nGuaranteed fare",
            style: Theme.of(context).textTheme.headline4!,
          ),
        ]),
      ),
    );
  }
}
