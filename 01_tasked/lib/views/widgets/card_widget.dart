import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget customCards({
  required BuildContext context,
  required String projectNumber,
  required String projectTitle,
  required String projectDate,
  required Color projectClr,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.only(left: 20, top: 20),
      width: MediaQuery.of(context).size.width - 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: projectClr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Image(
                height: 40,
                image: AssetImage(
                  'assets/svg/Group 36.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Project $projectNumber',
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      height: 1.5,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Project $projectTitle',
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 20,
              height: 1.5,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Project $projectDate',
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 20,
              height: 1,
            ),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

Widget customCard0({
  required BuildContext context,
  required String projectNumber,
  required String projectTitle,
  required String projectDate,
  required Color projectClr,
}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
        width: 341.w,
        height: 339.h,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0.h,
              left: 0.w,
              child: SizedBox(
                  width: 341.w,
                  height: 339.h,
                  child: Stack(children: <Widget>[
                    Container(
                        width: 341.w,
                        height: 338.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.r),
                          ),
                          gradient: const LinearGradient(
                              begin: Alignment(
                                  0.0374455489218235, 0.7739855647087097),
                              end: Alignment(
                                  -0.7739855647087097, 0.06429413706064224),
                              colors: [
                                Color.fromRGBO(156, 44, 243, 1),
                                Color.fromRGBO(58, 72, 248, 1)
                              ]),
                        )),
                    Positioned(
                        top: 125.h,
                        left: 37.w,
                        child: Text(
                          'Front-End \nDevelopment',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 33.sp,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                      left: 130.w,
                      bottom: 130.h,
                      child: Stack(
                        children: [
                          Container(
                              width: 347.4952087402344,
                              height: 416.1828918457031,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(
                                    347.r,
                                    416.r,
                                  ),
                                ),
                              )),
                          Positioned(
                              top: 272,
                              left: 37,
                              child: Text(
                                projectDate,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ],
                      ),
                    ),
                  ]))),
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
          Positioned(
            right: 160.w,
            top: 170.h,
            child: Container(
                width: 347.4952087402344,
                height: 416.1828918457031,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(
                      347.r,
                      416.r,
                    ),
                  ),
                )),
          ),
        ])),
  );
}
