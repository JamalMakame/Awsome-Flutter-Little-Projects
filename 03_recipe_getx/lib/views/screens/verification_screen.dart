import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';
import 'package:recipe_getx/components/otp.dart';

import '../widgets/dialog_builder.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  EmailOTP myauth = EmailOTP();
  String otp = '';

  String _code = '';
  int _currentIndex = 0;
  bool _isLoading = false;
  bool _isResendAgain = false;
  bool _isVerified = false;
  int _start = 60;
  late Timer _timer;

  @override
  void initState() {
    Timer.periodic(
        const Duration(
          seconds: 5,
        ), (timer) {
      setState(() {
        _currentIndex++;

        if (_currentIndex == 3) _currentIndex = 0;
      });
    });

    sendOTP();

    super.initState();
  }

  void resend() {
    setState(() {
      _isResendAgain = true;
      sendOTP();
    });

    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        } else {
          _start--;
        }
      });
    });
  }

  verify() {
    setState(() {
      _isLoading = true;
    });

    const oneSec = Duration(milliseconds: 2000);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        _isLoading = false;
        _isVerified = true;
      });
    });
  }

  verifyOTP() async {
    if (await myauth.verifyOTP(otp: otp) == true) {
      DialogBuilder().showResultDialog("OTP is verified");
    } else {
      DialogBuilder().showResultDialog("Invalid OTP");
    }
  }

  sendOTP() async {
    myauth.setConfig(
      appEmail: "makamej@tapel-halal.cyou",
      appName: "Recipe App",
      userEmail: '${Get.arguments['emailClr']}',
      otpLength: 4,
      otpType: OTPType.digitsOnly,
    );
    if (await myauth.sendOTP() == true) {
      DialogBuilder()
          .showResultDialog("OTP has been sent")
          .then((value) => const Duration(seconds: 3))
          .then((value) => Get.back());
    } else {
      DialogBuilder()
          .showResultDialog("Oops, OTP send failed")
          .then((value) => const Duration(seconds: 3))
          .then((value) => Get.back());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 43.h,
                ),
                FadeInDown(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'Check your email',
                    style: GoogleFonts.inter(
                      color: kMainTextClr,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    'We\'ve sent the code to your email',
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      color: kSecondaryTextClr,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 600),
                  duration: const Duration(milliseconds: 500),
                  child: VerificationCode(
                    length: 4,
                    fillColor: Colors.white,
                    autofocus: true,
                    cursorColor: const Color(0xff1FCC79),
                    fullBorder: true,
                    textStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff3E5481),
                    ),
                    underlineColor: Colors.black,
                    keyboardType: TextInputType.number,
                    underlineUnfocusedColor: Colors.black,
                    onCompleted: (value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (value) {},
                  ),
                ),
                SizedBox(
                  height: 48.sp,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Code expires in : ',
                    style: GoogleFonts.inter(
                      color: kMainTextClr,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          '03:12',
                          style: GoogleFonts.inter(
                            color: kSecondaryClr,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.sp,
                ),
                primaryButton(
                  buttonClr: kPrimaryClr,
                  textClr: Colors.white,
                  buttonText: 'Verify',
                  buttonWidth: 327.w,
                  buttonHeight: 56.h,
                  onPressed: () {
                    _code.length < 4
                        ? () => {}
                        : () {
                            verify();
                          };
                  },
                ),
                SizedBox(
                  height: 24.sp,
                ),
                primaryButton(
                  buttonClr: Colors.white,
                  textClr: kPrimaryClr,
                  buttonText: 'Send Again',
                  buttonWidth: 327.w,
                  buttonHeight: 56.h,
                  onPressed: () {
                    if (_isResendAgain) return;
                    resend();
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
