import 'package:get/get.dart';
import 'package:youapptask/app/modules/interest/controllers/interest_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<InterestController>(
      () => InterestController(),
    );
  }
}
