import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget indicator({
  required int count,
  required PageController pageController,
  required BuildContext context,
}) {
  return SmoothPageIndicator(
    controller: pageController,
    count: count,
    effect: ExpandingDotsEffect(
      activeDotColor: Colors.deepPurple,
      dotColor: Colors.deepPurple.shade100,
      spacing: 8,
      radius: 78.r,
      dotHeight: 13.h,
      dotWidth: 13.w,
    ),
  );
}
