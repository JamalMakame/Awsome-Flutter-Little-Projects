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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('Menu Icon Pressed');
                      },
                      child: SizedBox(
                        height: 14.67.h,
                        width: 22.w,
                        child: Image.asset(
                          'images/sally_icons/Menu.png',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                      },
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ],
                ),
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
          Expanded(
            flex: 1,
            child: const CustomTabSectionView(),
          ),
        ],
      ),
    );
  }
}
