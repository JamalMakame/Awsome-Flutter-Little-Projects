import 'package:custom_input_text/custom_input_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 107,
                ),
                Text(
                  'Password recovery',
                  style: GoogleFonts.inter(
                    color: kMainTextClr,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Enter your email to recover your password',
                  style: GoogleFonts.inter(
                    color: kSecondaryTextClr,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomInputText(
                  placeholder: 'Email',
                  textController: emailController,
                  icon: Icons.email_rounded,
                  onfocusColor: kPrimaryClr,
                  keyboardType: TextInputType.emailAddress,
                  validation: true,
                ),
                const SizedBox(
                  height: 32,
                ),
                primaryButton(
                  buttonClr: kPrimaryClr,
                  textClr: Colors.white,
                  buttonText: 'Sign In',
                  buttonWidth: 327,
                  buttonHeight: 56,
                  onPressed: () {
                    debugPrint('Signing In Pressed');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
