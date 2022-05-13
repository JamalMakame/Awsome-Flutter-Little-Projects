import 'package:calculator_app/theme_data.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buildResult() {
    return Container(
      padding: const EdgeInsets.only(top: 72),
      height: 230,
      width: 359,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          Row(
            children: const [
              TextField(
                textDirection: TextDirection.ltr,
                cursorColor: MyColors.buttonBackgroundClr,
                
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 83,
          right: 19,
          left: 19,
          bottom: 42,
        ),
        child: Column(
          children: [
            Expanded(
              child: buildResult(),
            ),
            // Expanded(
            //   flex: 2,
            //   child: buildButtons(),
            // )
          ],
        ),
      ),
    );
  }
}
