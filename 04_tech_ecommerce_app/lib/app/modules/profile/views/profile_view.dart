import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

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
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 60.h,
                ),
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
                Container(
                    width: 315,
                    height: 190,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 23,
                          left: 0,
                          child: Container(
                              width: 315,
                              height: 167,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, 0.029999999329447746),
                                      offset: Offset(0, 10),
                                      blurRadius: 40)
                                ],
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ))),
                      Positioned(
                          top: 86,
                          left: 82,
                          child: Text(
                            'Rosina Doe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Raleway',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: 119,
                          left: 61,
                          child: Text(
                            'Address: 43 Oxford RoadM13 4GRManchester, UK',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Raleway',
                                fontSize: 15,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: 0,
                          left: 116,
                          child: Container(
                              width: 76,
                              height: 76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(76),
                                  topRight: Radius.circular(76),
                                  bottomLeft: Radius.circular(76),
                                  bottomRight: Radius.circular(76),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/sally_images/Rectangle6.png'),
                                    fit: BoxFit.fitWidth),
                              ))),
                    ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
