import 'package:get/get.dart';
import 'package:sezicat/app/modules/onBoarding/controller/onBoarding_controller.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
