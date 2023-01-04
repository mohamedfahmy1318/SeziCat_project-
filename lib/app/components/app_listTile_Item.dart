import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

Widget listTileItem(
        {required String titleText,
        required dynamic trailingIcon,
        required dynamic leadingIcon}) =>
    Container(
      width: 338.w,
      height: 64.h,
      decoration: BoxDecoration(
        color: HexColor('#FAF7FE'),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          titleText,
          style: textStyle(
              color: ColorUtil.primaryColor,
              fonSize: 15.sp,
              fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
          onPressed: () {},
          splashColor: Colors.transparent,
          icon: trailingIcon,
        ),
      ),
    );

Widget switchListTileItem(
        {required status, required onChanged, required title}) =>
    Container(
      width: 338.w,
      height: 64.h,
      decoration: BoxDecoration(
          color: HexColor('#FAF7FE'), borderRadius: BorderRadius.circular(10)),
      child: SwitchListTile(
        value: status,
        activeTrackColor: ColorUtil.primaryColor,
        onChanged: onChanged,
        activeColor: ColorUtil.whiteColor,
        inactiveTrackColor: HexColor('#D4D6DD'),
        title: Text(
          title,
          style: textStyle(
              color: ColorUtil.primaryColor,
              fonSize: 15.sp,
              fontWeight: FontWeight.w500),
        ),
        secondary: Icon(
          Icons.notifications_rounded,
          color: ColorUtil.primaryColor,
        ),
      ),
    );
