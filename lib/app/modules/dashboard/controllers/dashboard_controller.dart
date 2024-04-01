import 'package:get/get.dart';
  //TODO: Implement DashboardController

class DashboardController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

final DashboardController dashboardController =
    Get.find(); // Ganti menjadi Get.find()
