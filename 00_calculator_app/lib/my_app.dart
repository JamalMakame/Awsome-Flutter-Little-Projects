import 'package:calculator_app/theme_data.dart';
import 'package:calculator_app/widgets/num_pad.dart';
import 'package:calculator_app/widgets/result_view.dart';
import 'package:flutter/material.dart';



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userAnswer = '';
  var userQuestion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 19,
            left: 19,
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.3,
                child: ResultView(),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 25,
                ),
                child: Divider(
                  color: MyColors.dividerClr,
                  thickness: 2,
                ),
              ),
              Expanded(
                child: NumPadView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
