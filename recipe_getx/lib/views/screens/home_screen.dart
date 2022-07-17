import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
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
        width: 68,
        height: 48,
        decoration: BoxDecoration(
          color: tileClr,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              color: textClr,
              fontWeight: textWeight,
              fontSize: 15,
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
      borderRadius: const BorderRadius.all(
        Radius.circular(30),
      ),
      maxHeight: 56,
      enableSuggestions: true,
      clearButtonColor: kMainTextClr,
      clearButtonIconColor: Colors.white,
      cursorHeight: 18,
      elevation: 4,
      hintStyle: GoogleFonts.inter(
        color: kMainTextClr,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      hintText: 'Search',
      icon: const Icon(
        Icons.search_outlined,
        size: 24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      onClearButtonPressed: (value) {
        searchController.clear();
      },
      searchButtonIconColor: kMainTextClr,
      searchButtonPosition: SearchButtonPosition.leading,
      textStyle: GoogleFonts.inter(
        color: kMainTextClr,
        fontSize: 20,
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
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _customSearchBar(
                      textEditingController,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: GoogleFonts.inter(
                            fontSize: 27,
                            color: kMainTextClr,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
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
                              text: 'All',
                              tileClr: kPrimaryClr,
                              textClr: Colors.white,
                              textWeight: FontWeight.bold,
                              onPress: () {},
                            ),
                            _customTile(
                              text: 'All',
                              tileClr: kPrimaryClr,
                              textClr: Colors.white,
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
              const SizedBox(
                height: 23,
              ),
              const Divider(
                color: kOutlineClr,
                thickness: 8,
              ),
              const SizedBox(
                height: 17,
              ),
              Obx(
                () {
                  return SizedBox(
                    height: 750,
                    child: ContainedTabBarView(
                      initialIndex: controller.tabIndex.value,
                      tabs: const [
                        Text('Left'),
                        Text('Right'),
                      ],
                      tabBarProperties: TabBarProperties(
                        height: 27.0,
                        labelStyle: GoogleFonts.inter(
                          fontSize: 24,
                        ),
                        indicatorColor: kPrimaryClr,
                        indicatorWeight: 3.0,
                        labelColor: kPrimaryClr,
                        unselectedLabelColor: kOutlineClr,
                      ),
                      views: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 24,
                          ),
                          child: GridView.builder(
                            itemCount: 9,
                            itemBuilder: ((context, index) {
                              return const PostCard();
                            }),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
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
