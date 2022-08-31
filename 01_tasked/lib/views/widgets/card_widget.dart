import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasked/const/app_colors.dart';

Widget customCard0({
  required BuildContext context,
  required String projectNumber,
  required String projectTitle,
  required String projectDate,
}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 341.w,
      height: 339.h,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.h,
            left: 0.w,
            child: SizedBox(
              width: 341.w,
              height: 339.h,
              child: Stack(
                children: <Widget>[
                  Container(
                      width: 341.w,
                      height: 338.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.r),
                        ),
                        gradient: TodoColors.kPrimaryGradientClr,
                      )),
                  Positioned(
                      top: 125.h,
                      left: 37.w,
                      child: Text(
                        projectTitle,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 33.sp,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      )),
                  Positioned(
                    left: 130.w,
                    bottom: 130.h,
                    child: Stack(
                      children: [
                        Container(
                            width: 347.w,
                            height: 416.h,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.05),
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(
                                  347.r,
                                  416.r,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 272.h,
            left: 37.w,
            child: Text(
              projectDate,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Poppins',
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            right: 160.w,
            top: 170.h,
            child: Container(
                width: 347.4952087402344,
                height: 416.1828918457031,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                      347.r,
                      416.r,
                    ),
                  ),
                )),
          ),
          Positioned(
              top: 272,
              left: 37,
              child: Text(
                projectDate,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 47.h,
              left: 106.w,
              child: SizedBox(
                  width: 203.w,
                  height: 33.h,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0.h,
                        left: 0.w,
                        child: SizedBox(
                            width: 203.w,
                            height: 33.h,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0.h,
                                  left: 0.w,
                                  child: Text(
                                    'Project $projectNumber',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                          255,
                                          255,
                                          255,
                                          1,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontSize: 22.sp,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 37.h,
              left: 37.w,
              child: SizedBox(
                  width: 50.w,
                  height: 50.w,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0.h,
                      left: 0.w,
                      child: Image.asset(
                        'assets/svg/Vector.png',
                      ),
                    ),
                    Positioned(
                      top: 6.h,
                      left: 6.w,
                      child: Image.asset(
                        'assets/svg/project-management 1 (Traced).png',
                        height: 36.h,
                        width: 36.w,
                      ),
                    ),
                  ]))),
        ],
      ),
    ),
  );
}
