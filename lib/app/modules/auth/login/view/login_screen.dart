// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/app_Text_field.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/reset_Password_screen.dart';
import 'package:sezicat/app/modules/auth/login/controller/login_controller.dart';
import 'package:sezicat/app/modules/onBoarding/views/onBoarding_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/app_strings.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class LoginScreen extends GetView<LoginController> {
  LoginController loginController = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Padding(
        padding: EdgeInsets.only(
          top: 64.0.h,
          right: 26.w,
          left: 26.w,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: loginController.formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.loginTitle,
                    style: textStyle(
                      color: ColorUtil.primaryColor,
                      fonSize: 21.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        AppString.loginTitle2,
                        style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 20.sp,
                          height: 1.8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidBell,
                        color: ColorUtil.primaryColor,
                        size: 17.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppTextFormField(
                    controller: loginController.emailController,
                    validator: (String value) {
                      return loginController.validateEmail(value);
                    },
                    hintText: 'Enter your email here',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  AppTextFormField(
                    controller: loginController.passwordController,
                    validator: (String value) {
                      return loginController.validatePassword(value);
                    },
                    hintText: 'Password',
                    obscureText: controller.isVisibility.value ? false : true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        loginController.visibility();
                      },
                      icon: loginController.isVisibility.value
                          ? Icon(Icons.remove_red_eye, color: Colors.grey)
                          : Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Checkbox(
                            visualDensity: VisualDensity.comfortable,
                            side: BorderSide.none,
                            checkColor: ColorUtil.primaryColor,
                            value: loginController.isChecked.value,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.grey.shade200),
                            onChanged: (value) {
                              loginController.isChecked.value = value!;
                            }),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        'remember me',
                        style: textStyle(
                            color: ColorUtil.grey,
                            fonSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 79.w,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAll(ResetPasswordScreen());
                        },
                        child: Text(
                          'Forgot password?',
                          style: textStyle(
                              color: ColorUtil.primaryColor,
                              fonSize: 15.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppButton(
                    onPressed: () {
                      if (loginController.formkey.currentState!.validate()) {
                        Get.off(() => AppLayoutScreen());
                      }
                      return null;
                    },
                    height: 63.h,
                    minWidth: 338.w,
                    child: Text(
                      'Sign In',
                      style: textStyle(
                          color: ColorUtil.whiteColor,
                          fonSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(PathUtil.lineIcon),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'or continue with',
                        style: textStyle(
                            color: ColorUtil.grey,
                            fonSize: 13.6.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(PathUtil.lineIcon),
                    ],
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100.w,
                        height: 65.h,
                        child: Card(
                          elevation: .7,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(PathUtil.googleIcon,height: 25.h,width: 23.w,),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      SizedBox(
                        width: 100.w,
                        height: 65.h,
                        child: Card(
                          elevation: .7,
                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.apple,size: 25,)
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18.19,
                      ),
                      SizedBox(
                        width: 100.w,
                        height: 65.h,
                        child: Card(
                          elevation: .7,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(PathUtil.facebookIcon,height: 25.h,width: 23.w,),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have account?',
                        style: textStyle(
                            color: ColorUtil.blackColor,
                            fonSize: 13.5.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.SIGNUP);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              color: ColorUtil.primaryColor,
                              fontSize: 16.sp),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
