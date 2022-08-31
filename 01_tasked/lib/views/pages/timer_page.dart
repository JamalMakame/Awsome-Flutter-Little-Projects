// ignore_for_file: unused_field

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage>
    with AutomaticKeepAliveClientMixin<TimerPage> {
  bool isRunning = false;
  bool isStarted = true;

  final CountDownController _controller = CountDownController();
  final int _duration = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ShaderMask(
          shaderCallback: (bounds) {
            return TodoColors.kPrimaryGradientClr.createShader(bounds);
          },
          child: Text(
            'Pomodoro Timer',
            style: TextStyle(
              fontFamily: 'Consolas',
              fontSize: 50.sp,
              color: TodoColors.iconClr,
            ),
          ),
        ),
      ),
      backgroundColor: TodoColors.backGroundClr,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: CircularCountDownTimer(
              duration: _duration,
              initialDuration: _duration,
              controller: _controller,
              width: Get.width,
              height: Get.height / 3.2,
              ringColor: TodoColors.lightTextClr,
              fillColor: TodoColors.iconClr,
              fillGradient: TodoColors.kPrimaryGradientClr,
              strokeWidth: 9,
              autoStart: false,
              isReverse: true,
              textFormat: CountdownTextFormat.MM_SS,
              textStyle: TextStyle(
                fontFamily: 'Consolas',
                fontSize: 120.sp,
                color: TodoColors.iconClr,
              ),
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 30.h,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Study',
                                style: TextStyle(
                                  fontSize: 63.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TodoColors.darkTextClr,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller.restart(duration: 1500);
                                  setState(() {
                                    isRunning = true;
                                    isStarted = false;
                                  });
                                },
                                child: ShaderMask(
                                  shaderCallback: (bounds) {
                                    return TodoColors.kPrimaryGradientClr
                                        .createShader(bounds);
                                  },
                                  child: Text(
                                    '25',
                                    style: TextStyle(
                                      color: TodoColors.iconClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 153.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Break',
                                style: TextStyle(
                                  fontSize: 63.sp,
                                  fontWeight: FontWeight.w400,
                                  color: TodoColors.darkTextClr,
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller.restart(duration: 300);
                                  setState(() {
                                    isRunning = true;
                                    isStarted = false;
                                  });
                                },
                                child: ShaderMask(
                                  shaderCallback: (bounds) {
                                    return TodoColors.kPrimaryGradientClr
                                        .createShader(bounds);
                                  },
                                  child: Text(
                                    '5',
                                    style: TextStyle(
                                      color: TodoColors.iconClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 153.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 38.0,
                    ),
                    child: isStarted == true
                        ? Container()
                        : isRunning == true
                            ? GestureDetector(
                                onTap: () {
                                  _controller.pause();
                                  setState(() {
                                    isRunning = false;
                                  });
                                },
                                child: Container(
                                  width: Get.width / 2,
                                  height: 72,
                                  decoration: const BoxDecoration(
                                    gradient: TodoColors.kPrimaryGradientClr,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(226, 226, 226, 0.25),
                                        offset: Offset(17, 26),
                                        blurRadius: 25,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(75),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pause',
                                      style: TextStyle(
                                        fontSize: 33.sp,
                                        fontWeight: FontWeight.w600,
                                        color: TodoColors.lightTextClr,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.resume();
                                  setState(() {
                                    isRunning = true;
                                  });
                                },
                                child: Container(
                                  width: Get.width / 2,
                                  height: 72,
                                  decoration: const BoxDecoration(
                                    gradient: TodoColors.kPrimaryGradientClr,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(226, 226, 226, 0.25),
                                        offset: Offset(17, 26),
                                        blurRadius: 25,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(75),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Resume',
                                      style: TextStyle(
                                        fontSize: 33.sp,
                                        fontWeight: FontWeight.w600,
                                        color: TodoColors.lightTextClr,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
