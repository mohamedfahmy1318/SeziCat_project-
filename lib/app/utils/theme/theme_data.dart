import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sezicat/app/utils/app_colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white,
    ),
  ),
bottomSheetTheme:BottomSheetThemeData(
  backgroundColor: Colors.white,
  elevation: 0.0

) ,
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  elevation: 0.0,
  type: BottomNavigationBarType.fixed,
),

);
