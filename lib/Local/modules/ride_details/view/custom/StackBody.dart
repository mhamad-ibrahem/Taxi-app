import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/RideDetails.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/ScreenSize.dart';

class StackBody extends StatelessWidget {
  StackBody({super.key});
  final RideDetailsImplement controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSize.screenWidth * 0.9,
        // height: AppSize.screenHight * 0.201,
        margin: const EdgeInsets.only(top: 130),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 25),
                                child: CircleAvatar(
                                    backgroundColor: AppColor.greenPrimary,
                                    maxRadius: 5),
                              ),
                            ),
                            const SizedBox(
                              width: 26,
                            ),
                            Expanded(
                              flex: 22,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.rideModel!.sourceDetails,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              color: AppColor.grey,
                                              fontWeight: FontWeight.w400)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    controller.rideModel!.source,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 35,
                    indent: 35,
                    thickness: 0.25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                        backgroundColor: AppColor.greenPrimary,
                                        maxRadius: 5),
                                  ),
                                  const SizedBox(
                                    width: 26,
                                  ),
                                  Expanded(
                                    flex: 22,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            controller.rideModel!.sourceDetails,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                    color: AppColor.grey,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          controller.rideModel!.source,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2!
                                              .copyWith(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ])));
  }
}
