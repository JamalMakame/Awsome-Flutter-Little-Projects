import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/components/post_card.dart';
import 'package:recipe_getx/controllers/home_manager.dart';

class HomeScreen extends GetView<HomeScreenManager> {
  const HomeScreen({
    Key? key,
  }) : super(
          key: key,
        );

  GestureDetector _customTile({
    required String text,
    required Color tileClr,
    required Color textClr,
    required FontWeight textWeight,
    required Function() onPress,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 68.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: tileClr,
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              color: textClr,
              fontWeight: textWeight,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }

  OutlineSearchBar _customSearchBar(
    TextEditingController searchController,
  ) {
    return OutlineSearchBar(
      hideSearchButton: true,
      borderColor: Colors.transparent,
      textEditingController: searchController,
      backgroundColor: kOutlineClr,
      borderRadius:  BorderRadius.all(
        Radius.circular(30.r),
      ),
      maxHeight: 56.h,
      enableSuggestions: true,
      clearButtonColor: kMainTextClr,
      clearButtonIconColor: Colors.white,
      cursorHeight: 18.h,
      elevation: 0,
      hintStyle: GoogleFonts.inter(
        color: kMainTextClr,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      hintText: 'Search',
      icon: const Icon(
        Icons.search_outlined,
        size: 24,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 16.h,
      ),
      onClearButtonPressed: (value) {
        searchController.clear();
      },
      searchButtonIconColor: kMainTextClr,
      searchButtonPosition: SearchButtonPosition.leading,
      textStyle: GoogleFonts.inter(
        color: kMainTextClr,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    Get.put(HomeScreenManager());
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _customSearchBar(
                      textEditingController,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: GoogleFonts.inter(
                            fontSize: 27.sp,
                            color: kMainTextClr,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _customTile(
                              text: 'All',
                              tileClr: kPrimaryClr,
                              textClr: Colors.white,
                              textWeight: FontWeight.bold,
                              onPress: () {},
                            ),
                            _customTile(
                              text: 'Food',
                              tileClr: kOutlineClr,
                              textClr: kMainTextClr,
                              textWeight: FontWeight.bold,
                              onPress: () {},
                            ),
                            _customTile(
                              text: 'Drink',
                              tileClr: kOutlineClr,
                              textClr: kMainTextClr,
                              textWeight: FontWeight.bold,
                              onPress: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Divider(
                color: kOutlineClr,
                thickness: 8.h,
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
                        Text('Left'),
                        Text('Right'),
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
                        Container(color: Colors.green),
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
