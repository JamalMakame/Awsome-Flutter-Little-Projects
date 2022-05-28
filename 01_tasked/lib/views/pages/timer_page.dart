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
            fontSize: 50,
            color: TodoColors.iconClr,
          ),
        ),
      ),
      backgroundColor: TodoColors.backGroundClr,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: CircularCountDownTimer(
              duration: _duration,
              initialDuration: _duration,
              controller: _controller,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              ringColor: TodoColors.lightTextClr,
              fillGradient: const LinearGradient(
                begin: Alignment(0.0374455489218235, 0.7739855647087097),
                end: Alignment(-0.7739855647087097, 0.06429413706064224),
                colors: [
                  Color.fromRGBO(156, 44, 243, 1),
                  Color.fromRGBO(58, 72, 248, 1)
                ],
              ),
              fillColor: TodoColors.iconClr,
              strokeWidth: 9,
              autoStart: false,
              isReverse: true,
              textFormat: CountdownTextFormat.MM_SS,
              textStyle: const TextStyle(
                fontFamily: 'Consolas',
                fontSize: 100,
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
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: TodoColors.lightTextClr,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
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
                                Text(
                                  'Study',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
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
                                      fontFamily: 'Poppins',
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
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
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
                                      fontFamily: 'Poppins',
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
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height: 72,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.0374455489218235,
                                            0.7739855647087097),
                                        end: Alignment(-0.7739855647087097,
                                            0.06429413706064224),
                                        colors: [
                                          Color.fromRGBO(156, 44, 243, 1),
                                          Color.fromRGBO(58, 72, 248, 1)
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(
                                              226, 226, 226, 0.25),
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
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height: 72,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.0374455489218235,
                                            0.7739855647087097),
                                        end: Alignment(-0.7739855647087097,
                                            0.06429413706064224),
                                        colors: [
                                          Color.fromRGBO(156, 44, 243, 1),
                                          Color.fromRGBO(58, 72, 248, 1),
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(
                                              226, 226, 226, 0.25),
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
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline5,
                                      ),
                                    ),
                                  ),
                                ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
