import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

import '../../components/post_card.dart';
import '../../controllers/home_manager.dart';

class MyProfileScreen extends GetView<HomeScreenManager> {
  const MyProfileScreen({Key? key}) : super(key: key);

  Column _profileTile({
    required String numberText,
    required String labelText,
  }) {
    return Column(
      children: [
        Text(
          numberText,
          style: GoogleFonts.inter(
            fontSize: 17.sp,
            color: kMainTextClr,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          labelText,
          style: GoogleFonts.inter(
            fontSize: 17.sp,
            color: kOutlineClr,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      right: 24.w,
                      top: 54.h,
                      bottom: 20.h
                    ),
                    child: Icon(
                      Icons.share,
                      color: kMainTextClr,
                      size: 24.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 100.sp,
                    backgroundImage: const AssetImage(
                      'assets/profile/Avatar (2).jpg',
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Choirul Syafril',
                    style: GoogleFonts.inter(
                      fontSize: 17.sp,
                      color: kMainTextClr,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _profileTile(
                        labelText: 'Recipes',
                        numberText: '32',
                      ),
                      _profileTile(
                        labelText: 'Following',
                        numberText: '782',
                      ),
                      _profileTile(
                        labelText: 'Followers',
                        numberText: '1.287',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Divider(
                color: kOutlineClr,
                thickness: 4.h,
              ),
              SizedBox(
                height: 17.h,
              ),
              Obx(
                () {
                  return SizedBox(
                    height: 750.h,
                    child: ContainedTabBarView(
                      initialIndex: controller.tabIndex.value,
                      tabs: const [
                        Text('Recipes'),
                        Text('Liked'),
                      ],
                      tabBarProperties: TabBarProperties(
                        height: 33.h,
                        labelStyle: GoogleFonts.inter(
                          fontSize: 24.sp,
                        ),
                        indicatorColor: kPrimaryClr,
                        indicatorWeight: 1.w,
                        labelColor: kPrimaryClr,
                        unselectedLabelColor: kOutlineClr,
                      ),
                      views: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.w,
                            right: 24.w,
                            top: 24.h,
                          ),
                          child: GridView.builder(
                            itemCount: 9,
                            itemBuilder: ((context, index) {
                              return const PostCard();
                            }),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'Nothing has been liked',
                              style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                color: kMainTextClr,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                      onChange: (index) => controller.changeTabIndex(index),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
