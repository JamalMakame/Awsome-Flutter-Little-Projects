import 'package:flutter/material.dart';
import 'package:flutter_input_field/flutter_input_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/views/screens/home_screen.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

import '../../components/constants.dart';

class UploadStep2 extends StatelessWidget {
  const UploadStep2({Key? key}) : super(key: key);

  SizedBox _customIngredientTile() {
    return SizedBox(
      height: 56,
      width: double.maxFinite,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 21.65,
            vertical: 19,
          ),
          errorStyle: GoogleFonts.inter(
            color: kMainTextClr,
            fontSize: 17,
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
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: const BorderSide(
              color: Color(0xff2e3e5c),
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
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
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
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
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '2/',
                      style: GoogleFonts.inter(
                        color: kMainTextClr,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '2',
                          style: GoogleFonts.inter(
                            color: kOutlineClr,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients',
                    style: GoogleFonts.inter(
                      color: kMainTextClr,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.add,
                            color: kMainTextClr,
                            size: 24,
                          ),
                          Text(
                            'Group',
                            style: GoogleFonts.inter(
                              color: kMainTextClr,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              _customIngredientTile(),
              _customIngredientTile(),
              primaryButton(
                buttonClr: kPrimaryClr,
                textClr: Colors.white,
                buttonText: 'Add Ingredient',
                buttonWidth: double.maxFinite,
                buttonHeight: 56,
                onPressed: () {},
              ),
              const Divider(
                color: kOutlineClr,
                thickness: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: FlutterInputField(
                  hintText: 'Tell a little about your food',
                  labelText: 'Steps',
                  lineHeight: 7,
                  filledColor: Colors.transparent,
                  onChange: () {},
                  onDone: () {},
                  labelTextStyle: GoogleFonts.inter(
                    color: kMainTextClr,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  icon: Column(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: kMainTextClr,
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Image(
                        image: AssetImage(
                          'assets/images/Drag Icon.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: kOutlineClr,
                  borderRadius: BorderRadius.circular(8),
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
                padding: const EdgeInsets.only(top: 52),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    primaryButton(
                        buttonClr: kOutlineClr,
                        textClr: kMainTextClr,
                        buttonText: 'Back',
                        buttonWidth: 156,
                        buttonHeight: 56,
                        onPressed: () {
                          Get.back();
                        }),
                    primaryButton(
                        buttonClr: kPrimaryClr,
                        textClr: Colors.white,
                        buttonText: 'Next',
                        buttonWidth: 156,
                        buttonHeight: 56,
                        onPressed: () {
                          Get.defaultDialog(
                            title: '',
                            middleText: "",
                            content: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 48,
                                vertical: 48,
                              ),
                              child: Column(
                                children: [
                                  const Image(
                                    height: 180,
                                    width: 180,
                                    image: AssetImage(
                                      'assets/images/upload_Success.jpg',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Upload Success',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xff3e5481),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Your recipe has been uploaded,\nyou can see it on your profile',
                                    style: GoogleFonts.inter(
                                      color: kMainTextClr,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  primaryButton(
                                    buttonClr: kPrimaryClr,
                                    textClr: Colors.white,
                                    buttonText: 'Ok',
                                    buttonWidth: 231,
                                    buttonHeight: 56,
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
