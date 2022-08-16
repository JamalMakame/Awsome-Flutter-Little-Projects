import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget primaryButton({
  required Color buttonClr,
  required Color textClr,
  required String buttonText,
  required double buttonWidth,
  required double buttonHeight,
  required Function() onPressed,
}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        color: buttonClr,
        borderRadius: BorderRadius.circular(32.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              0,
              4.0,
            ),
            blurRadius: 4.0,
            spreadRadius: 0,
          ),
          //B
        ],
      ),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.inter(
            color: textClr,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
