import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/constants/app_colors.dart';

class CustomTabSectionView extends GetView {
  const CustomTabSectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: TabBar(
                labelColor: kPrimaryClr,
                indicatorColor: kPrimaryClr,
                unselectedLabelColor: const Color(0xff9a9a9d),
                unselectedLabelStyle: GoogleFonts.raleway(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                padding: EdgeInsets.only(
                  left: 44.w,
                  right: 24.w,
                ),
                labelStyle: GoogleFonts.raleway(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                tabs: const [
                  Tab(text: 'Wearable'),
                  Tab(text: 'Laptops'),
                  Tab(text: 'Phones'),
                  Tab(text: 'Drones'),
                ],
              ),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              child: TabBarView(
                children: [
                  Container(
                    child: Text("Home Body"),
                  ),
                  Container(
                    child: Text("Articles Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
