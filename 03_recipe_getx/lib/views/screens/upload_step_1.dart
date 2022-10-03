import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_input_field/flutter_input_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/screens/upload_step_2.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    int _sliderVal = 30;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 56.h,
                  bottom: 32.h
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
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
                        text: '1/',
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
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                color: kMainTextClr,
                radius: const Radius.circular(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  child: SizedBox(
                    height: 161.h,
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(top: 22.h, bottom: 16.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.image,
                            size: 64.sp,
                            color: kOutlineClr,
                          ),
                          Text(
                            'Add Cover Photo',
                            style: GoogleFonts.inter(
                              color: kMainTextClr,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(up to 12 Mb)',
                            style: GoogleFonts.inter(
                              color: kOutlineClr,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlutterInputField(
                // labelTextStyle: GoogleFonts.inter(
                //   color: kMainTextClr,
                //   fontSize: 17.sp,
                //   fontWeight: FontWeight.bold,
                // ),
                hintText: 'Enter food name',
                onChange: () {},
                filledColor: Colors.white,
                hintFontSize: 15.sp,
                labelFontSize: 17.sp,
                lineHeight: 1,
                onDone: () {},
                labelText: 'Food Name',
              ),
              FlutterInputField(
                // labelTextStyle: GoogleFonts.inter(
                //   color: kMainTextClr,
                //   fontSize: 17.sp,
                //   fontWeight: FontWeight.bold,
                // ),
                hintText: 'Tell a little about your food',
                onChange: () {},
                filledColor: Colors.white,
                hintFontSize: 12.sp,
                labelFontSize: 17.sp,
                lineHeight: 7,
                onDone: () {},
                labelText: 'Description',
              ),
              RichText(
                text: TextSpan(
                  text: 'Cooking Duration',
                  style: GoogleFonts.inter(
                    color: kMainTextClr,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: ' (in minutes)',
                      style: GoogleFonts.inter(
                        color: kOutlineClr,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: SizedBox(
                  //height: 70,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '<10',
                            style: GoogleFonts.inter(
                              color: kPrimaryClr,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '30',
                            style: GoogleFonts.inter(
                              color: kPrimaryClr,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '>60',
                            style: GoogleFonts.inter(
                              color: kPrimaryClr,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        min: 1,
                        max: 60,
                        divisions: 100,
                        value: _sliderVal.toDouble(),
                        onChanged: (newValue) {
                          setState(() {
                            _sliderVal = newValue.round();
                          });
                        },
                        activeColor: Colors.green,
                        inactiveColor: kMainTextClr,
                      ),
                    ],
                  ),
                ),
              ),
              primaryButton(
                buttonClr: kPrimaryClr,
                textClr: Colors.white,
                buttonText: 'Next',
                buttonWidth: double.maxFinite,
                buttonHeight: 56.h,
                onPressed: () {
                  Get.to(
                    () => const UploadStep2(),
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
