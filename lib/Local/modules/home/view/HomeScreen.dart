import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/Colors.dart';
import '../../../../Global/Core/Class/map_state.dart';
import '../controller/HomeController.dart';
import 'custom/HomeButton.dart';
import 'custom/HomeDrawer.dart';
import 'custom/TopRow.dart';
import 'custom/UserLocation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeControllerImplement homeController =
      Get.put(HomeControllerImplement());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            width: AppSize.screenWidth * 0.84,
            backgroundColor: AppColor.white,
            child: const HomeDrawer()),
        body: GetBuilder<HomeControllerImplement>(
          builder: (controller) => Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const TopRowScreen(),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Stack(children: [
                  SizedBox(
                    height: AppSize.screenHight,
                    width: AppSize.screenWidth,
                    child: homeController.kGooglePlex != null
                        ? GoogleMap(
                            mapType: MapType.normal,
                            markers: homeController.markerList.toSet(),
                            initialCameraPosition: homeController.kGooglePlex!,
                            onMapCreated: (GoogleMapController controllermap) {
                              homeController.controller.complete(controllermap);
                            },
                          )
                        : null,
                  ),
                  const UserLocationScreen(),
                  homeController.mapState == MapState.online
                      ? Positioned(
                          left: AppSize.screenWidth * 0.1,
                          height: AppSize.screenHight * 1.22,
                          child: HomeButton1(onPressed: () {
                            homeController.openAcceptBottomSheet();
                          }),
                        )
                      : const SizedBox(),
                  homeController.mapState == MapState.online
                      ? Positioned(
                          left: AppSize.screenWidth * 0.45,
                          height: AppSize.screenHight * 1.22,
                          child: HomeButton2(onPressed: () {
                            homeController.stopSearching();
                          }),
                        )
                      : const SizedBox(),
                  Positioned(
                    left: AppSize.screenWidth * 0.8,
                    height: AppSize.screenHight * 1.22,
                    child: HomeButton3(onPressed: () {
                      homeController.openBottomSheet();
                    }),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
