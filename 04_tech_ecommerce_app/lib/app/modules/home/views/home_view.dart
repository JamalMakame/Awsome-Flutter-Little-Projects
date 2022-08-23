import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/constants/app_colors.dart';
import 'package:tech_ecommerce_app/app/modules/home/views/custom_tab_section_view.dart';

import '../controllers/home_controller.dart';
import 'custom_search_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundClr,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 47.h,
              horizontal: 50.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSearchView(context),
                SizedBox(
                  height: 55.h,
                ),
                Text(
                  'Order online \nCollect in store',
                  style: GoogleFonts.raleway(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: CustomTabSectionView(),
          ),
        ],
      ),
    );
  }
}
