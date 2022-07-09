import 'package:custom_input_text/custom_input_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';
import 'package:recipe_getx/views/widgets/text_input.dart';

import '../../controllers/sign_in_manager.dart';

class SignInScreen extends GetView<SingInManager> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: kSecondaryTextClr,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 327,
                height: 56,
                child: CustomInputText(
                  icon: Icons.email_outlined,
                  placeholder: 'Email',
                  enabled: false,
                  textController: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  onfocusColor: kPrimaryClr,
                  validation: controller.emailValidation.value,
                  onChanged: (value) => controller.validateEmail,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 327,
                height: 56,
                child: CustomInputText(
                  icon: Icons.lock_clock_outlined,
                  placeholder: 'Password',
                  textController: controller.textController,
                  isPassword: true,
                  enabled: false,
                  onfocusColor: kPrimaryClr,
                  validation: controller.passWordValidation.value,
                  onChanged: (value) => controller.validatePassword,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: (() {
                  debugPrint('Forgot Password is Tapped');
                }),
                child: Text(
                  'Forgot password',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              primaryButton(
                buttonClr: kPrimaryClr,
                textClr: Colors.white,
                buttonText: 'Login',
                buttonWidth: 327,
                buttonHeight: 56,
                onPressed: () {
                  debugPrint('Login Button is Pressed');
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Or Continue with',
                style: GoogleFonts.inter(
                  color: kSecondaryTextClr,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              primaryButton(
                buttonClr: kSecondaryClr,
                textClr: Colors.white,
                buttonText: 'Google',
                buttonWidth: 324,
                buttonHeight: 56,
                onPressed: () {
                  debugPrint('Sign in with Google is Pressed');
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Text.rich(
                TextSpan(
                  text: 'Don\'t have any account?',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: kMainTextClr,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          debugPrint('Leading to Sign up Page');
                        },
                        child: Text(
                          '  Sign up',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: kPrimaryClr,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
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
