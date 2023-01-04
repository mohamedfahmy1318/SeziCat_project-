import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/models/gridView_model.dart';
import 'package:sezicat/app/modules/chat/view/chat_screen.dart';
import 'package:sezicat/app/modules/home/view/home_screen.dart';
import 'package:sezicat/app/modules/profile/view/profile_screen.dart';
import 'package:sezicat/app/modules/reports/view/report_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';

class LayoutController extends GetxController
    with GetSingleTickerProviderStateMixin {
  List<GridViewModel> gridList = [
    GridViewModel(
      title: 'Heart Rate',
      icon: PathUtil.waveIcon,
      icon2: '',
      text1: 'Normal',
      text2: '80HR',
      color: ColorUtil.heartRateColor,
    ),
    GridViewModel(
      title: 'Stabilization Rate',
      icon: PathUtil.personIcon,
      icon2: '',
      text1: '90%',
      text2: 'Stable',
      color: ColorUtil.stabilizationColor,
    ),
    GridViewModel(
      title: 'Battery Rate',
      icon: PathUtil.loadingIcon,
      icon2: PathUtil.batteryLine,
      text1: '89%',
      text2: '6h 45min',
      color: ColorUtil.batteryColor,
    ),
    GridViewModel(
      title: 'Brain Signals',
      icon: PathUtil.signalIcon,
      icon2: '',
      text1: 'Normal',
      text2: '8HZ',
      color: ColorUtil.brainSignalsColor,
    ),
  ].obs;

  RxInt currentIndex = 0.obs;
  List<Widget> screens = [
    HomeScreen(),
    ReportScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  List<Widget> tabs = [
    Padding(
      padding: EdgeInsets.only(bottom: 13.0.h),
      child: Tab(icon: SvgPicture.asset(PathUtil.homeFillIcon), height: 27.h),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 13.0.h),
      child: Tab(icon: SvgPicture.asset(PathUtil.calenderIcon), height: 27.h),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 13.0.h),
      child: Tab(
        height: 35.h,
        child: IconButton(
          iconSize: 23.w,
          onPressed: (){
            Get.toNamed(Routes.CHAT);
          },
          color: Colors.transparent,
          icon: FaIcon(
            FontAwesomeIcons.comment,
            color: ColorUtil.primaryColor,
            size: 24.w,),
        )
      ),
    ),
    Padding(
      padding: EdgeInsets.only(bottom: 13.0.h),
      child: Tab(
          icon: SvgPicture.asset(
            PathUtil.userIcon,
          ),
          height: 27.h),
    ),
  ];
  TabController? controller;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller = TabController(
      vsync: this,
      length: 4,
    );
  }

  @override
  void dispose() {
    controller;
    super.dispose();
  }
}
