import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sezicat/app/modules/app_layout/view/layout_Screen.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ChangedOkScreen extends StatefulWidget {
  const ChangedOkScreen({Key? key}) : super(key: key);

  @override
  State<ChangedOkScreen> createState() => _ChangedOkScreenState();
}

class _ChangedOkScreenState extends State<ChangedOkScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){

      Get.to(
        AppLayoutScreen(),
        duration: Duration(seconds: 3,),
        curve: Curves.elasticIn,
        transition: Transition.fade,

      );

    });
super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(PathUtil.forget2Icon),
            SizedBox(height: 39.h,),
            Text(
              'Password changed successfully',
              style: textStyle(
                  color: ColorUtil.primaryColor,
                  fonSize: 19.sp,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
