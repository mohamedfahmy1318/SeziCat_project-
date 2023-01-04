import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController namedController = TextEditingController();
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
  String? validateName(String value) {
    if (value.length <= 8) {
      return 'This is short name';
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
    namedController;
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    namedController.dispose();

    super.dispose();
  }

}
