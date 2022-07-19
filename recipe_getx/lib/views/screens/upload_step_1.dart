import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.inter(
                        color: kSecondaryClr,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '1/',
                      style: GoogleFonts.inter(
                        color: kMainTextClr,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '2',
                          style: GoogleFonts.inter(
                            color: kOutlineClr,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                color: kMainTextClr,
                radius: const Radius.circular(16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  child: Container(
                    height: 161,
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.image,
                          size: 64,
                          color: kOutlineClr,
                        ),
                        Text(
                          'Add Cover Photo',
                          style: GoogleFonts.inter(
                            color: kMainTextClr,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '(up to 12 Mb)',
                          style: GoogleFonts.inter(
                            color: kOutlineClr,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
