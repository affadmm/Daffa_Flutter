import 'package:get/get.dart';

import '../controllers/halaman_user_controller.dart';

class HalamanUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HalamanUserController>(
      () => HalamanUserController(),
    );
  }
}
