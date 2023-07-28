import 'package:get/get.dart';

import '../../../Data/Model/Rides/RidesModel.dart';

abstract class RideDetailsController extends GetxController {
  initialData();
}

class RideDetailsImplement extends RideDetailsController {
  RidesModel? rideModel;
  @override
  initialData() {
    rideModel = Get.arguments["RidesModel"];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
