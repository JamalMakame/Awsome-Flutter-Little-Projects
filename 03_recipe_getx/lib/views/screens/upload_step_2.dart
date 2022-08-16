import 'package:flutter/material.dart';
import 'package:flutter_input_field/flutter_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/views/screens/home_screen.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

import '../../components/constants.dart';

class UploadStep2 extends StatelessWidget {
  const UploadStep2({Key? key}) : super(key: key);

  SizedBox _customIngredientTile() {
    return SizedBox(
      height: 46.h,
      width: double.maxFinite,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 21.65.w,
            vertical: 19.h,
          ),
          errorStyle: GoogleFonts.inter(
            color: kMainTextClr,
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
          hintText: 'Enter ingredient',
          icon: const Image(
            image: AssetImage(
              'assets/images/Drag Icon.jpg',
            ),
          ),
          hintStyle: GoogleFonts.inter(
            color: kMainTextClr,
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: const BorderSide(
              color: Color(0xff2e3e5c),
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: const BorderSide(
              width: 0.5,
              style: BorderStyle.solid,
              color: Color(0xff1fcc79),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            top: 56.h,
            right: 24.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.inter(
                        color: kSecondaryClr,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '2/',
                      style: GoogleFonts.inter(
                        color: kMainTextClr,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '2',
                          style: GoogleFonts.inter(
                            color: kOutlineClr,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients',
                    style: GoogleFonts.inter(
                      color: kMainTextClr,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 24.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                            color: kMainTextClr,
                            size: 24.sp,
                          ),
                          Text(
                            'Group',
                            style: GoogleFonts.inter(
                              color: kMainTextClr,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              _customIngredientTile(),
              SizedBox(
                height: 24.h,
              ),
              _customIngredientTile(),
              SizedBox(
                height: 32.h,
              ),
              primaryButton(
                buttonClr: kPrimaryClr,
                textClr: Colors.white,
                buttonText: 'Add Ingredient',
                buttonWidth: double.maxFinite,
                buttonHeight: 56,
                onPressed: () {},
              ),
              SizedBox(
                height: 24.h,
              ),
              const Divider(
                color: kOutlineClr,
                thickness: 8,
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: FlutterInputField(
                  hintText: 'Tell a little about your food',
                  labelText: 'Steps',
                  lineHeight: 7,
                  filledColor: Colors.transparent,
                  onChange: () {},
                  onDone: () {},
                  labelTextStyle: GoogleFonts.inter(
                    color: kMainTextClr,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  icon: Column(
                    children: [
                      CircleAvatar(
                        radius: 14.r,
                        backgroundColor: kMainTextClr,
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Image(
                        width: 24.w,
                        height: 24.h,
                        image: const AssetImage(
                          'assets/images/Drag Icon.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 44.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: kOutlineClr,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: MaterialButton(
                  child: const Center(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: kMainTextClr,
                      size: 24,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 22.h,bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    primaryButton(
                        buttonClr: kOutlineClr,
                        textClr: kMainTextClr,
                        buttonText: 'Back',
                        buttonWidth: 156.w,
                        buttonHeight: 56.h,
                        onPressed: () {
                          Get.back();
                        }),
                    SizedBox(
                      height: 8.w,
                    ),
                    primaryButton(
                        buttonClr: kPrimaryClr,
                        textClr: Colors.white,
                        buttonText: 'Next',
                        buttonWidth: 156.w,
                        buttonHeight: 56.h,
                        onPressed: () {
                          Get.defaultDialog(
                            title: '',
                            middleText: "",
                            content: Padding(
                              padding:  EdgeInsets.symmetric(
                                horizontal: 48.w,
                                vertical: 48.h,
                              ),
                              child: Column(
                                children: [
                                   Image(
                                    height: 180.h,
                                    width: 180.w,
                                    image: const AssetImage(
                                      'assets/images/upload_Success.jpg',
                                    ),
                                  ),
                                   SizedBox(
                                    height: 32.h,
                                  ),
                                  Text(
                                    'Upload Success',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xff3e5481),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                   SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    'Your recipe has been uploaded,\nyou can see it on your profile',
                                    style: GoogleFonts.inter(
                                      color: kMainTextClr,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                   SizedBox(
                                    height: 24.h,
                                  ),
                                  primaryButton(
                                    buttonClr: kPrimaryClr,
                                    textClr: Colors.white,
                                    buttonText: 'Ok',
                                    buttonWidth: 231.w,
                                    buttonHeight: 56.h,
                                    onPressed: () {
                                      Get.back();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
