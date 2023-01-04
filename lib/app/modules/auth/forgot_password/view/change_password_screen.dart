import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sezicat/app/components/app_Text_field.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/changed_sucess_screen.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/reset_Password_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.off(ResetPasswordScreen());
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorUtil.blackColor,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: 39.0.h,left: 27.w,right: 27.w),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 50.w),
                child: SvgPicture.asset(PathUtil.forget2Icon),
              ),
              SizedBox(height: 40.h,),
              Text(
                'Your account has been verified,\n You can now change your\n password',
                textAlign: TextAlign.center,
                style:
                textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 17.sp,
                    height: 1.8,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 32.h,),
              AppTextFormField(
                obscureText: false,
                hintText: 'New Password',
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,size: 20.w,)),
                controller: TextEditingController(),
                validator: (){},
              ),
              SizedBox(height: 32.h,),
              AppTextFormField(
                obscureText: false,
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,size: 20.w,)),
                hintText: 'Confirm Password',
                controller: TextEditingController(),
                validator: (){},
              ),
              SizedBox(height: 39.h,),
              AppButton(
                  onPressed: (){
                    Get.off(ChangedOkScreen());
                  },
                  height: 63.h,
                  minWidth: 338.w,
                  child: Text(
                    'Change Password',
                    style: textStyle(
                        color: ColorUtil.whiteColor,
                        fonSize: 18.4.sp,
                        fontWeight: FontWeight.w500),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
