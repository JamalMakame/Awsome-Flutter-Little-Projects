import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/constants/app_colors.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryClr,
      body: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 51.w,
            ),
            child: Text(
              'Find your \nGadget',
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 65.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Image.asset(
            'images/sally_images/Saly-splash.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 100.h,
          ),
          MaterialButton(
            splashColor: Colors.transparent,
            child: Container(
              width: 314.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.r,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: GoogleFonts.raleway(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryClr,
                  ),
                ),
              ),
            ),
            onPressed: () {
              Get.toNamed(
                Routes.LOGIN,
              );
            },
          ),
        ],
      ),
    );
  }
}
