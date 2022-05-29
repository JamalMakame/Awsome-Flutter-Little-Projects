import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget indicator({
  required int count,
  required PageController pageController,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 0,
      left: 40,
    ),
    child: SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.deepPurple,
        dotColor: Colors.deepPurple.shade100,
        spacing: 10,
      ),
    ),
  );
}
