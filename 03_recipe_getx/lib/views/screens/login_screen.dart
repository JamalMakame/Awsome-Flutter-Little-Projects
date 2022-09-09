import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

import '../../controllers/sign_in_manager.dart';

import 'package:animated_login/animated_login.dart';

import 'verification_screen.dart';

class LoginScreen extends GetView<SingInManager> {
  const LoginScreen({Key? key}) : super(key: key);

  LoginViewTheme get _mobileTheme => LoginViewTheme(
        backgroundColor: Colors.white,
        loadingSocialButtonColor: kPrimaryClr,
        formFieldBackgroundColor: Colors.white,
        enabledBorderColor: kOutlineClr,
        focusedBorderColor: kPrimaryClr,
        useEmailStyle: GoogleFonts.inter(
          color: kSecondaryTextClr,
        ),
        welcomeTitleStyle: GoogleFonts.inter(
          color: kMainTextClr,
          fontWeight: FontWeight.bold,
        ),
        changeActionTextStyle: GoogleFonts.inter(
          color: kSecondaryTextClr,
        ),
        welcomeDescriptionStyle: GoogleFonts.inter(
          color: kSecondaryTextClr,
        ),
        hintTextStyle: GoogleFonts.inter(
          color: kSecondaryTextClr,
        ),
        forgotPasswordStyle: GoogleFonts.inter(
          color: kMainTextClr,
        ),
        actionButtonStyle: ButtonStyle(
          side: MaterialStateProperty.all(const BorderSide(color: kPrimaryClr)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(kPrimaryClr),
          elevation: MaterialStateProperty.all(8.0),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.inter(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      );

  LoginTexts get _loginTexts => LoginTexts(
        nameHint: 'Username',
        login: 'Login',
        signUp: 'Sign Up',
      );

  List<SocialLogin> _socialLogins() => <SocialLogin>[
        SocialLogin(
          callback: () async => controller.socialLogin('Google'),
          iconPath: 'assets/loading/google.png',
        ),
        SocialLogin(
          callback: () async => controller.socialLogin('Facebook'),
          iconPath: 'assets/loading/facebook.png',
        ),
        SocialLogin(
          callback: () => controller.socialLogin('Linkedin'),
          iconPath: 'assets/loading/linkedin.png',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return AnimatedLogin(
      emailController: controller.emailController.value,
      emailValidator: ValidatorModel(
        customValidator: (value) => controller.validateEmail(value!),
      ),
      passwordController: controller.passwordController.value,
      passwordValidator: const ValidatorModel(
        length: 6,
        checkNumber: true,
      ),
      onLogin: ((value) => controller.onLogin(value)),
      onSignup: ((value) {
        return controller.onSignUp(value).then(
          (_) {
            Get.to(
              () => const VerifyScreen(),
              arguments: {
                'emailClr': controller.emailController.value,
              }
            );
          },
        );
      }),
      onForgotPassword: ((email) => controller.onForgotPassword(email)),
      socialLogins: _socialLogins(),
      loginMobileTheme: _mobileTheme,
      loginTexts: _loginTexts,
      initialMode: controller.currentMode.value,
      onAuthModeChange: (AuthMode newMode) => controller.authModeChange,
    );
  }
}
