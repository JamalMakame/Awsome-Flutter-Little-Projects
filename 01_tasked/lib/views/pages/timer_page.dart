// ignore_for_file: unused_field

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
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
        title: const Text(
          'Pomodoro Timer',
          style: TextStyle(
            fontFamily: 'Consolas',
            fontSize: 30,
            color: TodoColors.iconClr,
          ),
        ),
      ),
      backgroundColor: TodoColors.backGroundClr,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CircularCountDownTimer(
              duration: _duration,
              initialDuration: _duration,
              controller: _controller,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.2,
              ringColor: TodoColors.lightTextClr,
              fillColor: TodoColors.iconClr,
              strokeWidth: 9,
              autoStart: false,
              isReverse: true,
              textFormat: CountdownTextFormat.MM_SS,
              textStyle: const TextStyle(
                fontFamily: 'Consolas',
                fontSize: 80,
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
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Study',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: TodoColors.darkTextClr,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller.restart(duration: 1500);
                                  setState(() {
                                    isRunning = true;
                                    isStarted = false;
                                  });
                                },
                                child: const Text(
                                  '25',
                                  style: TextStyle(
                                    color: TodoColors.iconClr,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 93,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Break',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: TodoColors.darkTextClr,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller.restart(duration: 300);
                                  setState(() {
                                    isRunning = true;
                                    isStarted = false;
                                  });
                                },
                                child: const Text(
                                  '5',
                                  style: TextStyle(
                                    color: TodoColors.iconClr,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 93,
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
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 72,
                                  decoration: const BoxDecoration(
                                    color: Colors.deepPurple,
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
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline5,
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
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 72,
                                  decoration: const BoxDecoration(
                                    color: Colors.deepPurple,
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
                                  child: const Center(
                                    child: Text(
                                      'Resume',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
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
