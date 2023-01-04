import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();

  RxBool isChecked = false.obs;
  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'This is wrong e-mail';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length <= 5) {
      return 'This is short password';
    }
    return null;
  }

  RxBool isVisibility = false.obs;

  void visibility() {
    isVisibility.value = !isVisibility.value;
  }
  @override
  void onInit() {
    emailController;
    passwordController;

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}
