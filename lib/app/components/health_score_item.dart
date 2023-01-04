import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

Widget healthScoreItem({required double width ,required double height,required polygonIconColor,required readMoreColor})=> Container(
  width:width,
  height: height,
  decoration: BoxDecoration(
    color: HexColor('#F5F6FA'),
    borderRadius: BorderRadius.circular(13.r),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Padding(
            padding:
            EdgeInsets.only(top: 21.h, left: 15.w, right: 19.w),
            child: Stack(
              children: [
                SvgPicture.asset(
                  PathUtil.PolygonIcon,
                  height: 43.h,
                  width: 42.w,
                  color: polygonIconColor,

                ),
                Positioned(
                  top: 12,
                  left: 9,
                  child: SvgPicture.asset(
                    PathUtil.homeLineIcon,
                    width: 17,
                    height: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(top: 17.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health Score',
              style: textStyle(
                  color: ColorUtil.blackColor,
                  fonSize: 17.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet,'
                  ' consefd\nadipiscing elit,'
                  ' sed do eiusmod\n tempor incididunt ut labore ...',
              style: textStyle(
                  color: ColorUtil.blackColor,
                  fonSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Read more',
                style: textStyle(
                    color:readMoreColor,
                    fonSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      )
    ],
  ),
);
