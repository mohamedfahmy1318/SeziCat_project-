import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/app_listTile_Item.dart';
import 'package:sezicat/app/test.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool status = false;
  bool statusApp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      width: 124.w,
                      height: 124.h,
                      child: CircleAvatar(
                        backgroundColor: HexColor('#F7F4FE'),
                        child: Icon(
                          Icons.person,
                          size: 60.w,
                          color: ColorUtil.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      'Mohamed Fahmy',
                      style: textStyle(
                          color: HexColor('#202020'),
                          fonSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    listTileItem(
                      leadingIcon: Icon(
                        Icons.person,
                        color: ColorUtil.primaryColor,
                      ),
                      titleText: 'Profile Information',
                      trailingIcon: IconButton(
                        onPressed: () {
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 21.w,
                          color: ColorUtil.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    listTileItem(
                      leadingIcon: Icon(
                        Icons.lock,
                        color: ColorUtil.primaryColor,
                      ),
                      titleText: 'Change Password',
                      trailingIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 21.w,
                          color: ColorUtil.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Notification',
                      style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    switchListTileItem(
                      title: 'Notification',
                      status:status ,
                      onChanged: (val){
                        setState(() {
                          status= val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    switchListTileItem(
                      title: 'App Notification',
                      status:statusApp ,
                      onChanged: (val){
                        setState(() {
                          statusApp= val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    //*************************
                    Text(
                      'General Setting',
                      style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    listTileItem(
                      leadingIcon: Icon(
                        Icons.g_translate_rounded,
                        color: ColorUtil.primaryColor,
                      ),
                      titleText: 'Language',
                      trailingIcon: IconButton(
                        onPressed: () {},
                        icon: Text(
                          'EN',
                          style: textStyle(
                              color: ColorUtil.primaryColor,
                              fonSize: 13.5.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    listTileItem(
                      leadingIcon: Icon(
                        Icons.phone_in_talk,
                        color: ColorUtil.primaryColor,
                      ),
                      titleText: 'Help Center',
                      trailingIcon: IconButton(
                        onPressed: () {
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 21.w,
                          color: ColorUtil.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
