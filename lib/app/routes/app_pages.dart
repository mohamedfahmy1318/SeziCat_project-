// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/modules/app_layout/bindings/layoutBindings.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/modules/auth/login/bindings/login_bindings.dart';
import 'package:sezicat/app/modules/auth/login/view/login_screen.dart';
import 'package:sezicat/app/modules/auth/registration/bindings/signUp_bindings.dart';
import 'package:sezicat/app/modules/auth/registration/view/signUp_screen.dart';
import 'package:sezicat/app/modules/chat/view/bot_chat.dart';
import 'package:sezicat/app/modules/chat/view/chat_screen.dart';
import 'package:sezicat/app/modules/home/bindings/home_bindings.dart';
import 'package:sezicat/app/modules/home/view/home_screen.dart';
import 'package:sezicat/app/modules/home_layout/battery_rate/view/battery_rate_screen.dart';
import 'package:sezicat/app/modules/home_layout/braing_signals/view/brain_Signal_screen.dart';
import 'package:sezicat/app/modules/home_layout/heart_rate/view/heart_rate_screen.dart';
import 'package:sezicat/app/modules/home_layout/stabilization_rate/stabilization_rate_screen.dart';

import 'package:sezicat/app/modules/onBoarding/binding/onBording_binding.dart';
import 'package:sezicat/app/modules/onBoarding/views/onBoarding_screen.dart';
import 'package:sezicat/app/modules/reports/bindings/report_bindings.dart';
import 'package:sezicat/app/modules/reports/view/report_screen.dart';
import 'package:sezicat/app/modules/splash/view/splash_screen1.dart';
import 'package:sezicat/app/modules/splash/view/splash_screen2.dart';
import 'package:sezicat/app/routes/app_paths.dart';
import 'package:sezicat/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH1;

  static final routes = [
    GetPage(
      name: Paths.SPLASH1,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Paths.SPLASH2,
      page: () => SplashScreen2(),
    ),
    GetPage(
        name: Paths.ONBOARDING,
        page: () => OnBoardingScreen(),
        binding: OnBoardingBinding()),
    GetPage(
      name: Paths.LOGIN,
      page: () => LoginScreen(),
      bindings: [LoginBinding(),SignUpBinding()],
    ),
    GetPage(
      name: Paths.SIGNUP,
      page: () => SignupScreen(),
      bindings: [LoginBinding(), SignUpBinding()],
    ),
    GetPage(
      name: Paths.SIGNUPCOMPLETE,
      page: () => SplashScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Paths.LAYOUT,
      page: () => AppLayoutScreen(),
      binding: LayoutBinding(),
    ),

    GetPage(
      name: Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Paths.HeartRate,
      page: () => HeartRateScreen(),
    ),
    GetPage(
      name: Paths.StabRate,
      page: () => StabilizationRateScreen(),
    ),
    GetPage(
      name: Paths.BatteryRate,
      page: () => BatteryRateScreen(),
    ),
    GetPage(
      name: Paths.BrainRate,
      page: () => BrainSignalScreen(),
    ),


    GetPage(
      name: Paths.CHAT,
      page: () => ChatScreen(),
    ),
    GetPage(
      name: Paths.CHATBOT,
      page: () => ChatBootScreen(),
    ),

    GetPage(
      name: Paths.REPORT,
      page: () => ReportScreen(),
      binding: ReportBinding(),
    ),

  ];
}
