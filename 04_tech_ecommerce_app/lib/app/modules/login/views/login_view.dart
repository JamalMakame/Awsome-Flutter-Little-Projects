import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/app/constants/app_colors.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryClr,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SizedBox(
                  width: 443.w,
                  height: 305.h,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: -55.h,
                          right: 24.w,
                          child: Container(
                              width: 125.w,
                              height: 125.h,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 184, 195, 1),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(125, 125)),
                              ))),
                      Positioned(
                          top: 215.h,
                          right: 50.w,
                          child: Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(112, 109, 252, 1),
                                  width: 6,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.elliptical(35, 35)),
                              ))),
                      Positioned(
                          top: 26.h,
                          left: 89.w,
                          child: Container(
                              width: 27.w,
                              height: 27.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(112, 109, 252, 1),
                                  width: 6,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.elliptical(27, 27)),
                              ))),
                      Positioned(
                        top: 99.h,
                        left: 50.w,
                        child: Text(
                          'Welcome \nback',
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 65.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37.h,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        )),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.w,
                        vertical: 36.h,
                      ),
                      child: Obx(
                        () {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Login',
                                style: GoogleFonts.raleway(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 44.h,
                              ),
                              Text(
                                'Email',
                                style: GoogleFonts.raleway(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff868686),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: controller.emailContr.value,
                                cursorColor: Colors.black,
                                style: GoogleFonts.raleway(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  focusColor: Colors.transparent,
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 45.h,
                              ),
                              Text(
                                'Password',
                                style: GoogleFonts.raleway(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff868686),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: controller.passcodeContr.value,
                                obscureText: !controller.showPassWord.value,
                                cursorColor: Colors.black,
                                style: GoogleFonts.raleway(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  suffix: GestureDetector(
                                    child: controller.showPassWord.value
                                        ? Text(
                                            'hide',
                                            style: GoogleFonts.raleway(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryClr,
                                            ),
                                          )
                                        : Text(
                                            'show',
                                            style: GoogleFonts.raleway(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryClr,
                                            ),
                                          ),
                                    onTap: () {
                                      controller.togglevisibility();
                                    },
                                  ),
                                  focusColor: Colors.transparent,
                                  border: const UnderlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Forgot passcode?',
                                  style: GoogleFonts.raleway(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: kPrimaryClr,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 62.h,
                              ),
                              MaterialButton(
                                onPressed: () async {
                                  await controller.logIn();
                                },
                                splashColor: Colors.transparent,
                                child: Container(
                                  height: 70.h,
                                  width: 314.w,
                                  decoration: BoxDecoration(
                                    color: kPrimaryClr,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.raleway(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 19.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Create account',
                                      style: GoogleFonts.raleway(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: kPrimaryClr,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
