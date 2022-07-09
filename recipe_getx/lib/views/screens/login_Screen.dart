import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';

import '../../controllers/sign_in_manager.dart';

import 'package:animated_login/animated_login.dart';

class LoginScreen extends GetView<SingInManager> {
  const LoginScreen({Key? key}) : super(key: key);

  LoginViewTheme get _mobileTheme => LoginViewTheme(
        // showLabelTexts: false,
        welcomeTitleStyle: GoogleFonts.inter(
          color: kMainTextClr,
          fontWeight: FontWeight.bold,
        ),
        textFormFieldDeco: const InputDecoration(
          // border: InputBorder(borderSide: )
        ),
        socialHighlightColor: kMainTextClr,
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
        socialLoginBorder: const BorderSide(
          color: kMainTextClr,
        ),
        backgroundColor: Colors.deepPurple[500], // const Color(0xFF6666FF),
        formFieldBackgroundColor: Colors.white,
        formFieldShadowColor: kMainTextClr,
        formWidthRatio: 60,
        textFormStyle: GoogleFonts.inter(),
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
          maximumSize: MaterialStateProperty.all(
            const Size(
              327,
              56,
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
          iconPath: 'assets/google.png',
        ),
        SocialLogin(
          callback: () async => controller.socialLogin('Facebook'),
          iconPath: 'assets/facebook.png',
        ),
        SocialLogin(
          callback: () => controller.socialLogin('Linkedin'),
          iconPath: 'assets/linkedin.png',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return AnimatedLogin(
          emailController: controller.emailController,
          emailValidator: ValidatorModel(
            customValidator: (value) => controller.validateEmail(value!),
          ),
          passwordController: controller.passwordController,
          passwordValidator: const ValidatorModel(
            length: 8,
            checkLowerCase: true,
            checkNumber: true,
            checkUpperCase: true,
          ),
          confirmPasswordController: controller.confirmPasswordController,
          onLogin: ((value) => controller.onLogin(value)),
          onSignup: ((value) => controller.onSignUp(value)),
          onForgotPassword: ((email) => controller.onForgotPassword(email)),
          socialLogins: _socialLogins(),
          loginMobileTheme: _mobileTheme,
          loginTexts: _loginTexts,
          initialMode: controller.currentMode.value,
          onAuthModeChange: (AuthMode newMode) => controller.authModeChange,
        );
      },
    );
  }
}
