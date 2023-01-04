import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_path.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1400)).then((value) {
      Get.offAllNamed(
        Routes.ONBOARDING,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                PathUtil.s1Icon,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 36.w,
              ),
              SvgPicture.asset(PathUtil.c1Icon),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                PathUtil.seiz2Icon,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 14.w,
              ),
              SvgPicture.asset(PathUtil.cap1Icon),
            ],
          ),
        ],
      ),
    ));
  }
}
