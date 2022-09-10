import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset(
                'images/sally_icons/Arrow - Left.png',
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
          title: Text(
            'Order History',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 18.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.w),
          child: Column(
            children: [
              SizedBox(
                height: 104.h,
              ),
              SizedBox(
                height: 323.h,
                width: double.infinity,
                child: Image.asset(
                  'images/sally_images/Saly-item-not-found.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Text(
                'No History Yet',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 28.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Text(
                'Hit the blue button down\nbelow to Create an order',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 17.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 29.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 224,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
                          offset: Offset(0, 20),
                          blurRadius: 40)
                    ],
                    color: const Color.fromRGBO(87, 191, 233, 1),
                  ),
                  child: Center(
                    child: Text(
                      'Start Ordering',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
