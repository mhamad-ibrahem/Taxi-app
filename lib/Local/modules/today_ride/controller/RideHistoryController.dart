import 'package:get/get.dart';
import '../../../../Global/Core/Constant/Size.dart';
import '../../../Core/Constant/routes.dart';
import '../../../Data/Model/Rides/RidesModel.dart';
import '../../../Data/static/RideData.dart';
import '../../../Data/static/weeklyDigramData.dart';

abstract class RideHistoryController extends GetxController {
  changeSelected(int selected);
  goToRideDetails(RidesModel ridesModel);
  changeDaySelected(int index);
  changeData(int index);
}

class RideHistoryImplement extends RideHistoryController {
  int selectedIndex = 0;
  double padding = AppSize.screenHight * 0.03;
  List<RidesModel> rideList = rideData;
  List digramList = weeklyDigramData;
  String trip = "44";
  String hour = "48:30";
  String cashTrip = "145,75";

  @override
  changeSelected(int selected) {
    selectedIndex = selected;
    selected == 0
        ? padding = AppSize.screenHight * 0.03
        : padding = AppSize.screenHight * 0.25;
    print(selectedIndex);
    update();
  }

  @override
  goToRideDetails(ridesModel) {
    Get.toNamed(AppRoute.raideDetails, arguments: {"RidesModel": ridesModel});
  }

  @override
  changeDaySelected(index) {
    digramList[index].isSelected = !digramList[index].isSelected;
    changeData(index);
    print("=========================");
    update();
  }

  @override
  changeData(index) {
    trip = digramList[index].trips;
    hour = digramList[index].hourOnline;
    cashTrip = digramList[index].money;
    update();
  }
}
