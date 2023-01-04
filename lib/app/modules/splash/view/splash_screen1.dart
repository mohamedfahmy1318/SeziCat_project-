import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 800)).then((value) {
      Get.offAllNamed(
        Routes.SPLASH2,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                PathUtil.sIcon,
                fit: BoxFit.cover,
              ),
              Spacer(),
              SvgPicture.asset(PathUtil.cIcon),
            ],
          ),
          SizedBox(
            height: 64.h,
          ),
          Row(
            children: [
              SvgPicture.asset(PathUtil.izIcon),
              Spacer(),
              SvgPicture.asset(PathUtil.caIcon),
            ],
          ),
        ],
      ),
    );
  }
}
