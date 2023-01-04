import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/griditemHome.dart';
import 'package:sezicat/app/components/health_score_item.dart';
import 'package:sezicat/app/models/gridView_model.dart';
import 'package:sezicat/app/modules/auth/login/view/login_screen.dart';
import 'package:sezicat/app/modules/home/controller/home_controller.dart';
import 'package:sezicat/app/modules/home_layout/battery_rate/view/battery_rate_screen.dart';
import 'package:sezicat/app/modules/home_layout/braing_signals/view/brain_Signal_screen.dart';
import 'package:sezicat/app/modules/home_layout/heart_rate/view/heart_rate_screen.dart';
import 'package:sezicat/app/modules/home_layout/stabilization_rate/stabilization_rate_screen.dart';
import 'package:sezicat/app/modules/onBoarding/views/onBoarding_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/test.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class HomeScreen extends GetView<HomeController> {
  var homeController = Get.put(HomeController());
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 15.0.w),
          child: Icon(
            Icons.sunny,
            color: ColorUtil.primaryColor,
          ),
        ),
        title: Text(
          'Tue , 12 Oct',
          style: textStyle(
              color: ColorUtil.primaryColor,
              fonSize: 19.sp,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.only(left: 32.w, right: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi , Mohamed',
                style: textStyle(
                    color: ColorUtil.blackColor,
                    fonSize: 20.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 11.h,
              ),
              healthScoreItem(
                  width: 323.w,
                  height: 167.h,
                  polygonIconColor: ColorUtil.primaryColor,
                  readMoreColor: ColorUtil.primaryColor),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Metrics',
                style: textStyle(
                    color: ColorUtil.blackColor,
                    fonSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.w,
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 175),
                itemBuilder: (_, index) =>
                    buildGridItem(homeController.gridList[index], onTap: () {
                  if (index == 0) {
                    Get.offNamed(Routes.HeartRate);
                  }
                  if (index == 1) {
                    Get.offNamed(Routes.StabRate);
                  }
                  if (index == 2) {
                    Get.offNamed(Routes.BatteryRate);
                  }
                  if (index == 3) {
                    Get.offNamed(Routes.BrainRate);
                  }
                }),
                itemCount: homeController.gridList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
