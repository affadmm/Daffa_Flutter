import 'package:get/get.dart';
import 'package:flutter_application_2/app/routes/app_pages.dart'; 

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var currentMenu = 'Dashboard'.obs;

  void changeSelectedNavBar(int index) {
    currentIndex.value = index;

    if (index == 0) {
      currentMenu.value = 'Dashboard';
      Get.toNamed(Routes.DASHBOARD);
    } else if (index == 1) {
      currentMenu.value = 'Profile';
      Get.toNamed(Routes.HALAMAN_USER);
    }
    
  }
}
