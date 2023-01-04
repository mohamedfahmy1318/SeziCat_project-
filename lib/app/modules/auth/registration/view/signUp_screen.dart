// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/app_Text_field.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/modules/auth/login/controller/login_controller.dart';
import 'package:sezicat/app/modules/auth/registration/controller/signUp_controller.dart';
import 'package:sezicat/app/modules/auth/registration/view/complete_SingnUp.dart';
import 'package:sezicat/app/modules/onBoarding/views/onBoarding_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/app_strings.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class SignupScreen extends GetView<SignupController> {
  SignupController signupController = Get.put(SignupController());

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 32.h),
          child: SingleChildScrollView(
            child: Form(
              key: signupController.formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.signupTitle,
                    style: textStyle(
                      color: ColorUtil.primaryColor,
                      fonSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        AppString.signupTitle2,
                        style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 20.5.sp,
                          height: 2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  AppTextFormField(
                    controller: signupController.namedController,
                    validator: (String value) {
                      return signupController.validateName(value);
                    },
                    hintText: 'name',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppTextFormField(
                    controller: signupController.emailController,
                    validator: (String value) {
                      return signupController.validateEmail(value);
                    },
                    hintText: 'email',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppTextFormField(
                    controller: signupController.passwordController,
                    validator: (String value) {
                      return signupController.validatePassword(value);
                    },
                    hintText: 'Password',
                    obscureText: controller.isVisibility.value ? false : true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        signupController.visibility();
                      },
                      icon: signupController.isVisibility.value
                          ? Icon(Icons.remove_red_eye, color: Colors.grey)
                          : Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppButton(
                    onPressed: () {
                      if (signupController.formkey.currentState!.validate()) {
                        Get.off(CompleteSignUpScreen());
                      }
                      return null;
                    },
                    height: 64.h,
                    minWidth: 338.w,
                    child: Text(
                      'Next',
                      style: textStyle(
                          color: ColorUtil.whiteColor,
                          fonSize: 19.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 43.h,
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
                    height: 37.h,
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
                    height: 45.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have an Account?',
                        style: textStyle(
                            color: ColorUtil.blackColor,
                            fonSize: 13.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              color: ColorUtil.primaryColor,
                              fontSize: 13.sp),
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
