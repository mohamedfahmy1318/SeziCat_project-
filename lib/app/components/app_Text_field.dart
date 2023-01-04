// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sezicat/app/utils/app_colors.dart';
import 'package:sezicat/app/utils/theme/styles.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
   bool obscureText;
  final Function validator;
   Widget? suffixIcon;
  final String hintText;
   AppTextFormField({
    required this.controller,
     required this.obscureText,
    required this.validator,
     this.suffixIcon,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      style:  textStyle(
        color:ColorUtil.blackColor ,
        fonSize: 13.sp,
        fontWeight: FontWeight.w500,

      ),
      decoration: InputDecoration(
        fillColor: ColorUtil.fillColor,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: textStyle(
            color: Color.fromRGBO(96, 96, 96, 0.51),
            fonSize: 14.sp,
            fontWeight: FontWeight.w400),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:  BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
