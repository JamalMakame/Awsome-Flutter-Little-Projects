import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 60.h, bottom: 40.h),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'images/sally_icons/Arrow - Left.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Profile',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 34.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                SizedBox(
                    width: 315.w,
                    height: 190.h,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 23.h,
                          left: 0,
                          child: Container(
                              width: 315.w,
                              height: 167.h,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.029999999329447746),
                                    offset: Offset(0, 10),
                                    blurRadius: 40,
                                  )
                                ],
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ))),
                      Positioned(
                          top: 86.h,
                          left: 116.w,
                          child: Text(
                            'Rosina Doe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Raleway',
                              fontSize: 18.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          )),
                      Positioned(
                          top: 119.h,
                          left: 61.w,
                          child: Text(
                            'Address: 43 Oxford Road\nM13 4GR\nManchester, UK',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Raleway',
                              fontSize: 15.sp,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          )),
                      Positioned(
                        top: 119.h,
                        left: 23.w,
                        child: Image.asset(
                          'images/sally_icons/Location.png',
                          height: 24.sp,
                          width: 24.sp,
                        ),
                      ),
                      Positioned(
                          top: 0,
                          left: 116.w,
                          child: Container(
                              width: 76.w,
                              height: 76.h,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(76.r)),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/sally_images/Rectangle6.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ))),
                    ])),
                SizedBox(
                  height: 20.h,
                ),
                custom_tile(
                  onTap: () {},
                  tileText: 'Editing Profile',
                ),
                SizedBox(
                  height: 27.h,
                ),
                custom_tile(
                  onTap: () {},
                  tileText: 'Shopping Address',
                ),
                SizedBox(
                  height: 27.h,
                ),
                custom_tile(
                  onTap: () {
                    Get.toNamed(Routes.HISTORY);
                  },
                  tileText: 'Order History',
                ),
                SizedBox(
                  height: 27.h,
                ),
                custom_tile(
                  onTap: () {},
                  tileText: 'Cards',
                ),
                SizedBox(
                  height: 27.h,
                ),
                custom_tile(
                  onTap: () {},
                  tileText: 'Notification',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector custom_tile(
      {required VoidCallback onTap, required String tileText}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 23.w,
            vertical: 20.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tileText,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(
                'images/sally_icons/chevron-left.png',
                height: 24.sp,
                width: 24.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
