import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Class/map_state.dart';
import '../../../../Global/Core/functions/request_permission.dart';
import '../../../Core/Constant/routes.dart';
import '../../bottom_sheets/view/FindRiderSheet.dart';
import '../../bottom_sheets/view/HomeBottomSheet.dart';
import '../../bottom_sheets/view/OnLineBottomSheet.dart';
import '../../bottom_sheets/view/searchBottomSheet.dart';

abstract class HomeController extends GetxController {
  goToProfile();
  goToRaideHistory();
  goToChate();
  goToSettings();
  goToSupport();
  searchForRaider();
  openBottomSheet();
  openAcceptBottomSheet();
  stopSearching();
  acceptDriver();
}

class HomeControllerImplement extends HomeController {
  MapState mapState = MapState.offline;
  Timer? timer;
  int remainingSeconds = 1;
  int times = 10;
  StatusRequest statusRequest = StatusRequest.loading;
  Position? position;
  List<Marker> markerList = [];
  double? lat;
  double? lang;
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  CameraPosition? kGooglePlex;

  CameraPosition kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  getCurrentLocation() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
        target: LatLng(position!.latitude, position!.longitude), zoom: 14.32);
    statusRequest = StatusRequest.none;
    update();
  }

  @override
  goToChate() {
    Get.back();
    Get.toNamed(AppRoute.chat);
  }

  @override
  goToProfile() {
    Get.back();
    Get.toNamed(AppRoute.profile);
  }

  @override
  goToRaideHistory() {
    Get.back();
    Get.toNamed(AppRoute.raideHistory);
  }

  @override
  goToSettings() {}

  @override
  goToSupport() {
    Get.back();
    Get.toNamed(AppRoute.support);
  }

  @override
  openAcceptBottomSheet() {
    mapState = MapState.finadDriver;
    Get.back();
    openBottomSheet();
    update();
  }

  @override
  openBottomSheet() {
    print("=======================");
    Get.bottomSheet(
      mapState == MapState.offline
          ? HomeBottomSheet()
          : mapState == MapState.searching
              ? SearchBottomSheet()
              : mapState == MapState.online
                  ? OnLineBottomSheet()
                  : mapState == MapState.finadDriver
                      ? FindRiderSheet()
                      : Text("data"),
    );
  }

  @override
  searchForRaider() {
    mapState = MapState.searching;
    Get.back();
    openBottomSheet();
// Future.delayed(const Duration(seconds: 3));
    startTimer(1);
    update();
  }

  startTimer(seconds) {
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times = remainingSeconds;
        mapState = MapState.online;
        Get.back();
        openBottomSheet();
        time.cancel();
        update();
      } else {
        times = remainingSeconds;
        remainingSeconds--;
        mapState = MapState.searching;
        update();
      }
    });
    update();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }

  @override
  stopSearching() {
    mapState = MapState.offline;
    update();
  }

  @override
  acceptDriver() {
    mapState = MapState.acceptDriver;
    Get.back();
    openBottomSheet();
    update();
  }

  @override
  void onInit() {
    requestLocationPermission();
    getCurrentLocation();
    super.onInit();
  }
}
