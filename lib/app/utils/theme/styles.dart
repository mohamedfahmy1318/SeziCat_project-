import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

textStyle(
    {required Color color,
    required double fonSize,
    required FontWeight fontWeight,
    double? height}) {
  return GoogleFonts.poppins(
      color: color,
      fontSize: fonSize,
      fontWeight: fontWeight,
      height: height,
      textBaseline: TextBaseline.alphabetic);
}
