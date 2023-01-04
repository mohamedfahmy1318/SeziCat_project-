import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sezicat/app/routes/app_routes.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/app_path.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class ChatBootScreen extends StatelessWidget {
  const ChatBootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offNamed(Routes.CHAT);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: ColorUtil.primaryColor,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              maxRadius: 26.r,
              backgroundColor: ColorUtil.fillColor,
              child: Image.asset(
                'assets/images/bot.png',
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(
              width: 13.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('SezBot',
                      style: textStyle(
                          color: ColorUtil.primaryColor,
                          fonSize: 16.sp,
                          fontWeight: FontWeight.w500)),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: HexColor('#7DDE86'),
                      size: 15,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text('Always active',
                        style: textStyle(
                            color: ColorUtil.primaryColor,
                            fonSize: 12.sp,
                            fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Text(
                'Wed 8:21 AM',
                style: textStyle(
                    color: Colors.grey.shade700,
                    fonSize: 11.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 500,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 32.h),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 6,
              fit: FlexFit.tight,
              child: Container(
                width: 280.w,
                height: 48.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.mic_none,
                      color: ColorUtil.primaryColor,
                      size: 28.w,
                    ),
                    hintText: 'Type a message..',
                    hintStyle: textStyle(
                        color: Colors.grey.shade600,
                        fonSize: 12.sp,
                        fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Flexible(
              child: SizedBox(
                width: 45.w,
                height: 45.h,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: ColorUtil.primaryColor,
                  child: SvgPicture.asset(PathUtil.char_arror),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
