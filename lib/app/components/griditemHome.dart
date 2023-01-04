import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/models/gridView_model.dart';
import 'package:sezicat/app/test.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

Widget buildGridItem(GridViewModel gridModel,{required VoidCallback onTap}) => GestureDetector(
  onTap:onTap,
  child: Container(
    width: 155.w,
    height: 183.h,
    decoration: BoxDecoration(
      color: HexColor('${gridModel.color}'),
      borderRadius: BorderRadius.circular(14.r),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 21.0.h, left: 0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Text(
              '${gridModel.title}',
              style: textStyle(
                  color: ColorUtil.whiteColor,
                  fonSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Stack(
              children: [
                SvgPicture.asset(
                  '${gridModel.icon}',
                  height: 65.h,
                  width: 24.w,
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: SvgPicture.asset(
                    '${gridModel.icon2}',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Text(
              ' ${gridModel.text1}',
              style: textStyle(
                  color: ColorUtil.whiteColor,
                  fonSize: 15.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Text(
              ' ${gridModel.text2}',
              style: textStyle(
                  color: ColorUtil.whiteColor,
                  fonSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ),
  ),
);

