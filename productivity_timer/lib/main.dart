import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:productivity_timer/timer.dart';
import 'package:productivity_timer/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TimerHomePage());
}

class TimerHomePage extends StatelessWidget {
  const TimerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        titleSpacing: 3.0,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Work Timer'.toUpperCase(),
              style: Theme.of(context).textTheme.headline4),
        ),
        body: ChangeNotifierProvider(
          create: ((context) => CountDownProvider()),
          child: Consumer<CountDownProvider>(
            builder: ((context, data, child) => LayoutBuilder(
                  builder: ((context, constraints) {
                    
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: customButton(
                                  const Color(0xff009688),
                                  'Work',
                                  (() => data.setTime(60)),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: customButton(
                                  const Color(0xff607D8B),
                                  'S-Break',
                                  (() => data.setTime(5)),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: customButton(
                                  const Color(0xff455A64),
                                  'L-Break',
                                  (() => data.setTime(30)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: CircularPercentIndicator(
                            backgroundColor: Colors.greenAccent,
                            //animation: true,
                            circularStrokeCap: CircularStrokeCap.round,
                            radius: 200.0,
                            lineWidth: 20.0,
                            percent: (data.time / 60).toDouble(),
                            // TODO 1: Modify the percent value to fit the arch for other buttons
                            fillColor: Colors.white,
                            center: Text(
                              data.time.toString(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            progressColor: const Color(0xff009688),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: customButton(
                                  const Color(0xff212121),
                                  'Stop',
                                  (() => data.stopTime()),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: customButton(
                                  const Color(0xff009688),
                                  'Start',
                                  (() => data.startTime()),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                )),
          ),
        ),
      ),
    );
  }
}
