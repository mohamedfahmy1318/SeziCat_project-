import 'package:get/get.dart';
import 'package:sezicat/app/modules/auth/registration/controller/signUp_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
          () => SignupController(),
    );
  }
}