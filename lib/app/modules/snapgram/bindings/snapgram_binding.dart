import 'package:get/get.dart';

import '../controllers/snapgram_controller.dart';

class SnapgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnapgramController>(
      () => SnapgramController(),
    );
  }
}
