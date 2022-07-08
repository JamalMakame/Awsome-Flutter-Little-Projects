import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Welcome Back!',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kMainTextClr,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Please enter your account here',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: kSecondaryTextClr,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            //TODO: Add text input widget
          ],
        ),
      ),
    );
  }
}
