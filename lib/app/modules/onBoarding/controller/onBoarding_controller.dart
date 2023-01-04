import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/components/app_button.dart';
import 'package:sezicat/app/models/boarding_model.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/app_strings.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class OnBoardingController extends GetxController {
  Rx<PageController> pageController = PageController().obs;
  RxBool isLast = false.obs;
  List<BoardingModel> boarding = [
    BoardingModel(
        image1: PathUtil.onBoarding1Icon,
        image2: '',
        title:AppString.boardingTitle ,
        body:AppString.boardingBody,
        buttonText: 'Next'),
    BoardingModel(
        image1: PathUtil.onBoarding2Icon,
        image2: '',
        title:AppString.boardingTitle ,
        body:AppString.boardingBody,
        buttonText: 'Next'),
    BoardingModel(
      image1:PathUtil.onBoarding3Icon,
      title:AppString.boardingTitle ,
      body:AppString.boardingBody,
      buttonText: 'place camera code',
    ),
    BoardingModel(
        image1: PathUtil.onBoarding4Icon,
        image2: PathUtil.rightIcon,
        title: '',
        body:AppString.boardingBody,
        buttonText: 'join us'),
  ].obs;


  Widget buildBoardingItem(BoardingModel boarding) => Padding(
        padding:
            EdgeInsets.only(left: 55.w, top: 70.h, right: 55.w,bottom: 108.h ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${boarding.title}',
              style: textStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fonSize: 24.sp,
                  height: 1.8),
            ),
            SizedBox(
              height: 35.h,
            ),
            Center(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    '${boarding.image1}',
                    height: 293.h,
                    width: 225.w,
                  ),
                  Positioned(
                    right: 60,
                    top: 80,
                    child: SvgPicture.asset(
                      '${boarding.image2}',
                      width: 120,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Text(
              '${boarding.body}',
              style: textStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fonSize: 16.5.sp,
                  height: 2.4.h),
            ),
            SizedBox(
              height: 50.h,
            ),
            AppButton(
              onPressed: () {
                if (isLast.value) {
                  Get.offAllNamed(Routes.LOGIN);
                } else {
                  pageController.value.nextPage(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.ease);
                }
              },
              height: 63,
              minWidth: 280,
              child: Text(
                '${boarding.buttonText}',
                style: textStyle(
                    color: Colors.white,
                    fonSize: 20.sp,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      );
}
