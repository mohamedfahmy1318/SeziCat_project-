import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 25,
            color: ColorUtil.primaryColor,
          ),
            onPressed: (){
            Get.off(
              AppLayoutScreen()
            );
            },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              PathUtil.chatBot
            ),
            SizedBox(height: 40.h,),
            Text(
              'SezBot',
              style: textStyle(
                  color: ColorUtil.primaryColor,
                  fonSize: 32.sp,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Text(
              'Lorem ipsum dolor sit amet,  adipi\n '
                  'elit, sed do eiusmod tempor incid !',
              style: textStyle(
                  color: ColorUtil.blackColor,
                  fonSize: 16.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 35.h,
            ),
            AppButton(
                onPressed: (){
                  Get.offNamed(Routes.CHATBOT);
                },
                height:63.h,
                minWidth: 338.w,
                child: Text(
                  'Next',
                  style: textStyle(
                      color: ColorUtil.whiteColor,
                      fonSize: 16.sp,
                      fontWeight: FontWeight.w400
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
