import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/change_password_screen.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/changed_sucess_screen.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/reset_Password_screen.dart';
import 'package:sezicat/app/modules/auth/registration/view/complete_SingnUp.dart';
import 'package:sezicat/app/modules/chat/view/bot_chat.dart';
import 'package:sezicat/app/modules/chat/view/chat_screen.dart';
import 'package:sezicat/app/modules/home/bindings/home_bindings.dart';
import 'package:sezicat/app/modules/home_layout/stabilization_rate/stabilization_rate_screen.dart';
import 'package:sezicat/app/modules/profile/view/profile_screen.dart';
import 'package:sezicat/app/modules/reports/view/report_screen.dart';
import 'package:sezicat/app/routes/app_pages.dart';

import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/test.dart';

import 'package:sezicat/app/utils/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          themeMode: ThemeMode.light,
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH1,
        );
      },
    );
  }
}
