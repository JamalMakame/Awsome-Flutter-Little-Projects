import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/screens/new_password_screen.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';
import 'package:recipe_getx/components/otp.dart';

class PasswordVerificationScreen extends StatelessWidget {
  const PasswordVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 43,
                ),
                Text(
                  'Check your email',
                  style: GoogleFonts.inter(
                    color: kMainTextClr,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'We\'ve sent the code to your email',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: kSecondaryTextClr,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const OtpForm(),
                const SizedBox(
                  height: 48,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Code expires in : ',
                    style: GoogleFonts.inter(
                      color: kMainTextClr,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          '03:12',
                          style: GoogleFonts.inter(
                            color: kSecondaryClr,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                primaryButton(
                  buttonClr: kPrimaryClr,
                  textClr: Colors.white,
                  buttonText: 'Next',
                  buttonWidth: 327,
                  buttonHeight: 56,
                  onPressed: () {
                    Get.to(
                      () => const NewPasswordScreen(),
                    );
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                primaryButton(
                  buttonClr: Colors.white,
                  textClr: kPrimaryClr,
                  buttonText: 'Send Again',
                  buttonWidth: 327,
                  buttonHeight: 56,
                  onPressed: () {
                    debugPrint('Send again Button pressed');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
