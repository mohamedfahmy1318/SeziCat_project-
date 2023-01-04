// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/modules/app_layout/controller/layout_controller.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';

class AppLayoutScreen extends GetView<LayoutController> {
  LayoutController layoutController = Get.put(LayoutController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: layoutController.screens[layoutController.currentIndex.value],
        bottomNavigationBar: TabBar(
          controller: layoutController.controller,
          overlayColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
          indicatorColor: ColorUtil.primaryColor,
          indicatorWeight: 6.h,
          indicatorSize: TabBarIndicatorSize.label,
          padding: EdgeInsets.only(bottom: 2.h),
          onTap: (index) {
            layoutController.currentIndex.value = index;
            if (index == 0) {
              layoutController.tabs[0] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.homeFillIcon),
                    height: 27.h),
              );
            }
            else{
              layoutController.tabs[0] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.homeIcon),
                    height: 27.h),
              );
            }

            if (index == 1) {
              layoutController.tabs[1] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.calenderFillIcon),
                    height: 27.h),
              );
            }
            else{
              layoutController.tabs[1] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.calenderIcon),
                    height: 27.h),
              );
            }

            if (index == 3) {
              layoutController.tabs[3] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.profileFillIcon),
                    height: 27.h),
              );
            }
            else{
              layoutController.tabs[3] = Padding(
                padding: EdgeInsets.only(bottom: 13.0.h),
                child: Tab(
                    icon: SvgPicture.asset(PathUtil.userIcon),
                    height: 27.h),
              );
            }
          },
          tabs: layoutController.tabs,
        ),
      ),
    );
  }
}
