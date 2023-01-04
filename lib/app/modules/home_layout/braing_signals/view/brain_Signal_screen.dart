import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/health_score_item.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class BrainSignalScreen extends StatelessWidget {
  const BrainSignalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.brainSignalsColor,
        leading: IconButton(
          onPressed: () {
            Get.off(AppLayoutScreen());
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text('Brain Signals'),
        centerTitle: true,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: ColorUtil.brainSignalsColor,
            statusBarIconBrightness: Brightness.light),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 390.w,
            height: 185.h,
            decoration: BoxDecoration(
              color: ColorUtil.brainSignalsColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(42.r),
                bottomRight: Radius.circular(42.r),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 138.w,
                  top: 18.h,
                  child: Text(
                    '80HZ',
                    style: textStyle(
                        color: ColorUtil.whiteColor,
                        fonSize: 49.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),

                Positioned(
                  bottom: 65.h,
                  left: 138.w,
                  child: Row(
                    children: [
                      Text(
                        'Normal',
                        style: textStyle(
                            color: Colors.white,
                            fonSize: 25.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.signal_cellular_4_bar_outlined,
                        color: Colors.white,
                        size: 19,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Articles',
                  style: textStyle(
                      color: ColorUtil.blackColor,
                      fonSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16.h,
                ),
                healthScoreItem(
                    width: 355.w,
                    height: 170.h,
                    polygonIconColor:ColorUtil.brainSignalsColor,
                    readMoreColor:ColorUtil.brainSignalsColor,
                ),
                SizedBox(
                  height: 30.h,
                ),
                healthScoreItem(
                    width: 355.w,
                    height: 170.h,
                    polygonIconColor:ColorUtil.brainSignalsColor,
                    readMoreColor:ColorUtil.brainSignalsColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
