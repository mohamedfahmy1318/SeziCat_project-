
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class CompleteSignUpScreen extends StatefulWidget {
  const CompleteSignUpScreen({Key? key}) : super(key: key);

  @override
  State<CompleteSignUpScreen> createState() => _CompleteSignUpScreenState();
}

class _CompleteSignUpScreenState extends State<CompleteSignUpScreen> {
  DateTime? _selectedDate;
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 43.h, left: 33.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.offNamed(Routes.SIGNUP);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 22.w,
                      color: ColorUtil.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 66.w,
                  ),
                  SvgPicture.asset(PathUtil.lineComplete),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h, left: 33.w),
              child: Text(
                'Male Or Female',
                style: textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w, top: 29.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = !isMale;
                      });
                    },
                    child: SizedBox(
                      width: 171.w,
                      height: 115.h,
                      child: Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(color:isMale? ColorUtil.primaryColor:Colors.transparent)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(PathUtil.maleIcon),
                            Text(
                              'Male',
                              style: textStyle(
                                  color: ColorUtil.primaryColor,
                                  fonSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = !isMale;
                      });
                    },
                    child: SizedBox(
                      width: 171.w,
                      height: 110.h,
                      child: Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(color:!isMale? ColorUtil.primaryColor:Colors.transparent)),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(PathUtil.femaleIcon),
                            Text(
                              'Female',
                              style: textStyle(
                                  color: ColorUtil.primaryColor,
                                  fonSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 33.w, bottom: 30.h),
              child: Text(
                'Date Of Birth',
                style: textStyle(
                    color: ColorUtil.primaryColor,
                    fonSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: double.infinity,
              height: 174.h,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: DatePickerWidget(
                locale: DateTimePickerLocale.en_us,
                firstDate: DateTime(1950),
                initialDate: DateTime.now(),
                lastDate: DateTime.now(),
                looping: true,
                dateFormat: "dd/MMMM/yyyy",
                onChange: (DateTime newDate, _) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                  print(_selectedDate);
                },
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: Colors.white,
                  itemTextStyle: textStyle(
                      color: ColorUtil.primaryColor,
                      fonSize: 18.sp,
                      fontWeight: FontWeight.w400),
                  dividerColor: HexColor('#F0F0F0'),
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: AppButton(
                  onPressed: () {},
                  height: 65.h,
                  minWidth: 340.w,
                  child: Text(
                    'Next',
                    style: textStyle(
                        color: ColorUtil.whiteColor,
                        fonSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
