
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sezicat/app/components/health_score_item.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class StabilizationRateScreen extends StatelessWidget {
  const StabilizationRateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#AF8EFF'),
        leading: IconButton(
          onPressed: () {
            Get.off(AppLayoutScreen());
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text('Stabilization Rate'),
        centerTitle: true,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: HexColor('#AF8EFF'),
            statusBarIconBrightness: Brightness.light),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 390.w,
            height: 185.h,
            decoration: BoxDecoration(
              color: ColorUtil.stabilizationColor,
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
                    '90%',
                    style: textStyle(
                        color: ColorUtil.whiteColor,
                        fonSize: 49.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  height: 33.h,
                  width: 33.h,
                  top: 100.h,
                  left: 35.w,
                  child: SvgPicture.asset(
                    PathUtil.personIcon,
                    color: Colors.white30,
                  ),
                ),
                Positioned(
                  height: 35.h,
                  width: 35.h,
                  left: 300.w,
                  child: SvgPicture.asset(
                    PathUtil.personIcon,
                    color: Colors.white30,
                  ),
                ),

                Positioned(
                  bottom: 65.h,
                  left: 138.w,
                  child: Row(
                    children: [
                      Text(
                        'Stable',
                        style: textStyle(
                            color: Colors.white,
                            fonSize: 25.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.emoji_emotions_rounded,
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
                  'Stabilization Rate',
                  style: textStyle(
                      color: ColorUtil.blackColor,
                      fonSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 357.w,
                  height: 121.h,
                  decoration: BoxDecoration(
                    color: HexColor('#51459E'),
                    borderRadius:BorderRadius.circular(11.r),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 35.0.w,top: 35.h),
                        child: Column(
                          children: [
                            Text(
                              'Montly Target',
                              style: GoogleFonts.openSans(
                                color: ColorUtil.whiteColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text(
                              '50% acheived',
                              style: GoogleFonts.openSans(
                                  color: ColorUtil.whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 20.w,),
                      SvgPicture.asset(PathUtil.stabilLine),
                      SizedBox(width: 50.w,),
                      CircularPercentIndicator(
                        backgroundColor: HexColor('#F6F6FC'),
                        radius: 45.0.r,
                        animation: true,
                        curve: Curves.bounceInOut,
                        circularStrokeCap: CircularStrokeCap.round,
                        startAngle: 270,
                        lineWidth: 5.0,
                        percent: .5,
                        center:  Text(
                          '50%',
                          style: textStyle(
                              color: ColorUtil.whiteColor,
                              fonSize: 18.sp,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        progressColor: ColorUtil.stabilizationColor,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 34.h,),
                Card(
                  elevation: .6,
                  child: Container(
                    width: 357.w,
                    height: 121.h,
                    decoration: BoxDecoration(
                      color:ColorUtil.whiteColor,
                      borderRadius:BorderRadius.circular(11.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 35.0.w,top: 35.h),
                          child: Column(
                            children: [
                              Text(
                                'Weekly Target',
                                style: GoogleFonts.openSans(
                                    color: HexColor('#393939'),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text(
                                '25% achieved',
                                style: GoogleFonts.openSans(
                                    color: HexColor('#4D4A81'),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        SvgPicture.asset(PathUtil.stabilLine,color:Colors.grey.shade400),
                        SizedBox(width: 50.w,),
                        CircularPercentIndicator(
                          backgroundColor: HexColor('#F6F6FC'),
                          radius: 45.0.r,
                          animation: true,
                          curve: Curves.bounceInOut,
                          circularStrokeCap: CircularStrokeCap.round,
                          startAngle: 270,
                          lineWidth: 5.0,
                          percent: .25,
                          center:  Text(
                            '25%',
                            style: textStyle(
                                color: ColorUtil.primaryColor,
                                fonSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: ColorUtil.stabilizationColor,
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
