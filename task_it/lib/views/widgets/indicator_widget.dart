import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget indicator({
  required int count,
  required PageController pageController,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      left: 200,
    ),
    child: SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.deepPurple,
        dotColor: Colors.deepPurple.shade100,
        spacing: 20,
      ),
    ),
  );
}
