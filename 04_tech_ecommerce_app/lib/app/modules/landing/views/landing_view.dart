import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/constants/app_colors.dart';
import 'package:tech_ecommerce_app/app/modules/home/views/home_view.dart';

import '../../favourite/views/favourite_view.dart';
import '../../profile/views/profile_view.dart';
import '../../shopping/views/shopping_view.dart';
import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      (() {
        return Scaffold(
          backgroundColor: kBackGroundClr,
          body: PageView(
            controller: controller.pageContlr.value,
            onPageChanged: controller.onPageChanged,
            children: const <Widget>[
              HomeView(),
              FavoriteView(),
              ProfileView(),
              ShoppingView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTappedBar,
            unselectedItemColor: const Color(0xff200e32),
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: kPrimaryClr,
            selectedLabelStyle: GoogleFonts.raleway(
              color: kPrimaryClr,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                backgroundColor: kBackGroundClr,
                label: 'Home',
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'images/sally_icons/Home.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Heart',
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'images/sally_icons/Heart.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'images/sally_icons/Profile.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Buy',
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'images/sally_icons/Buy.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
