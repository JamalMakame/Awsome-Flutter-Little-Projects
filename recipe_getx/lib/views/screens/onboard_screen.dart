import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                child: Image(
                  width: 420,
                  height: 606,
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/Onboarding.png',
                  ),
                ),
              ),
              Text(
                'Start Cooking',
                style: GoogleFonts.inter(
                  fontSize: 32,
                  color: kMainTextClr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Let\'s join our community to cook better food!',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  color: kSecondaryTextClr,
                ),
              ),
              primaryButton(
                buttonClr: kPrimaryClr,
                textClr: Colors.white,
                buttonText: 'Get Started',
                buttonWidth: 327,
                buttonHeight: 56,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
