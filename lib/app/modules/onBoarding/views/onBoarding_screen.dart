// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sezicat/app/modules/onBoarding/controller/onBoarding_controller.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  OnBoardingScreen({Key? key}) : super(key: key);
  @override
  OnBoardingController controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController.value,
                onPageChanged: (index) {
                  if (index == controller.boarding.length - 1) {
                    controller.isLast.value = true;
                  } else {
                    controller.isLast.value = false;
                  }
                },
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => controller
                    .buildBoardingItem(controller.boarding[index]),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),)
    );
  }
}
