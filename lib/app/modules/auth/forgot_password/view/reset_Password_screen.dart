import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sezicat/app/components/app_Text_field.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/modules/auth/forgot_password/view/change_password_screen.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offNamed(Routes.LOGIN);
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorUtil.blackColor,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: 42.0.h,left: 27.w,right: 27.w),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 50.w),
                child: SvgPicture.asset(PathUtil.forget1Icon),
              ),
              SizedBox(height: 42.h,),
              Text(
                'Forgot your password? don’t worry\n You can rest it easly',
                textAlign: TextAlign.center,
                style:
                textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 17.sp,
                    height: 2.1,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 35.h,),
              AppTextFormField(
                obscureText: false,
                hintText: 'Enter your email here',
                controller: TextEditingController(),
                validator: (){},
              ),
              SizedBox(height: 44.h,),
              AppButton(
                  onPressed: (){
                    Get.off(ChangePasswordScreen());
                  },
                  height: 63.h,
                  minWidth: 338.w,
                  child: Text(
                    'Rest Password',
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
