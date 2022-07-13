import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:recipe_getx/components/constants.dart';

class HomeScreen extends StatelessWidget {
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
            Radius.circular(30),
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
        fontSize: 15,
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
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Home Page',
            style: GoogleFonts.inter(
              fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
