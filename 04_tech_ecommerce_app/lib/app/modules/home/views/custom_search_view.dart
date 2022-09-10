import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

import '../../../constants/app_colors.dart';

customSearchView(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          Get.toNamed(Routes.MENU);
        },
        child: SizedBox(
          height: 14.67.h,
          width: 22.w,
          child: Image.asset(
            'images/sally_icons/Menu.png',
          ),
        ),
      ),
      SizedBox(
        width: 26.w,
      ),
      Expanded(
        child: SizedBox(
          height: 60.h,
          child: TextFormField(
            onFieldSubmitted: (String value) {},
            decoration: InputDecoration(
              prefixIcon: InkWell(
                onTap: () {},
                child: Image.asset(
                  'images/sally_icons/Search.png',
                  height: 24.sp,
                  width: 24.sp,
                ),
              ),
              contentPadding: EdgeInsets.only(top: 18.h, left: 21.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
                borderSide: const BorderSide(
                  color: kPrimaryClr,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.r),
                ),
                borderSide: const BorderSide(
                  color: Colors.black38,
                ),
              ),
              hintText: 'Search',
              hintStyle: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
                color: const Color(0xff868686),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
