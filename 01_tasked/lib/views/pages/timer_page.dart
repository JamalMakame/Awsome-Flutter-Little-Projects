import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/views/widgets/custom_category_tile.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final CountDownController _controller = CountDownController();
  int _duration = 75;

  @override
  Widget build(BuildContext context) {
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              ringColor: TodoColors.lightTextClr,
              fillGradient: const LinearGradient(
                colors: [
                  Color(0xff9c2cf3),
                  Color(0xff3a49f9),
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
                                  onTap: () {},
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
                                  onTap: () {},
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
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 72,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff9c2cf3),
                                Color(0xff3a49f9),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(226, 226, 226, 0.25),
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
                              'Start Studying',
                              style:
                                  Theme.of(context).primaryTextTheme.headline5,
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
