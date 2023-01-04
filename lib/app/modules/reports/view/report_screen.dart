import 'dart:ffi';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';
import 'package:intl/intl.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 26.0.w),
          child: Text(
            'Statistics',
            style: textStyle(
                color: ColorUtil.primaryColor,
                fonSize: 26.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 32.0.h, left: 9.w, right: 9.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                ' Dec 2022',
                style: textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 17.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Container(
              width: 375.w,
              height: 97.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                elevation: 0.18,
                child: Column(
                  children: <Widget>[
                    DatePicker(
                      width: 55.w,
                      height: 86.h,
                      monthTextStyle: TextStyle(color: Colors.white60),
                      DateTime.now(),
                      initialSelectedDate: DateTime.now(),
                      selectionColor: ColorUtil.primaryColor,
                      selectedTextColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, top: 23.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: textStyle(
                        color: ColorUtil.primaryColor,
                        fonSize: 19.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 105.w,
                        height: 125.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.r)),
                        child: Card(
                          elevation: .2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 2.w),
                            child: Column(
                              children: [
                                SvgPicture.asset(PathUtil.waveLine),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Text(
                                  '185',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  'Heart Rate',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Container(
                        width: 105.w,
                        height: 125.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.r)),
                        child: Card(
                          elevation: .2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 2.w),
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.clock,
                                  color: ColorUtil.primaryColor,
                                  size: 23.w,
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  '3h 14min',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'Seizure Time',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Container(
                        width: 105.w,
                        height: 125.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.r)),
                        child: Card(
                          elevation: .2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 2.w),
                            child: Column(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.sadTear,
                                  color: ColorUtil.primaryColor,
                                  size: 23.w,
                                ),
                                SizedBox(
                                  height: 17.h,
                                ),
                                Text(
                                  '185',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'Heart Rate',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0.h, left: 28.w, bottom: 28.h),
              child: Text(
                'Daily Progress',
                style: textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 19.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.0.w),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: CircularPercentIndicator(
                          backgroundColor: HexColor('#F6F6FC'),
                          radius: 55.0.r,
                          animation: true,
                          curve: Curves.bounceInOut,
                          circularStrokeCap: CircularStrokeCap.round,
                          startAngle: 270,
                          lineWidth: 7.0.w,
                          animationDuration: 2,
                          percent: .60,
                          center: Text(
                            '',
                            style: textStyle(
                                color: ColorUtil.primaryColor,
                                fonSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: HexColor('#30E2D0'),
                        ),
                      ),
                      Positioned(
                        child: CircularPercentIndicator(
                          backgroundColor: HexColor('#F6F6FC'),
                          radius: 77.0.r,
                          animation: true,
                          curve: Curves.bounceInOut,
                          circularStrokeCap: CircularStrokeCap.round,
                          startAngle: 270,
                          lineWidth: 7.0.w,
                          percent: .75,
                          center: Text(
                            '',
                            style: textStyle(
                                color: ColorUtil.primaryColor,
                                fonSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: HexColor('#1E87FD'),
                        ),
                      ),
                      Positioned(
                        child: CircularPercentIndicator(
                          backgroundColor: HexColor('#F6F6FC'),
                          radius: 35.0.r,
                          animation: true,
                          curve: Curves.bounceInOut,
                          circularStrokeCap: CircularStrokeCap.round,
                          startAngle: 270,
                          lineWidth: 5.0,
                          percent: .30,
                          center: Text(
                            '',
                            style: textStyle(
                                color: ColorUtil.primaryColor,
                                fonSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          progressColor: ColorUtil.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 62,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            Icons.circle,
                            size: 16.w,
                            color: HexColor('#1E87FD'),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11.w, top: 14.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sleep',
                                  style: textStyle(
                                      color: HexColor('#1E87FD'),
                                      fonSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '6h 5min/8h',
                                  style: textStyle(
                                      color: HexColor('#1E87FD'),
                                      fonSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            Icons.circle,
                            size: 16.w,
                            color: HexColor('##30E2D0'),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11.w, top: 14.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Effort',
                                  style: textStyle(
                                      color: HexColor('#30E2D0'),
                                      fonSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '6h 25min',
                                  style: textStyle(
                                      color: HexColor('#30E2D0'),
                                      fonSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            Icons.circle,
                            size: 16.w,
                            color: ColorUtil.primaryColor,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11.w, top: 14.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Treatment',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 15.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'stable',
                                  style: textStyle(
                                      color: ColorUtil.primaryColor,
                                      fonSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
