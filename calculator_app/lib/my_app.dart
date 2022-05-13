import 'package:calculator_app/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buildResult() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Text(
              userQuestion,
              style: MyColors.buttonText,
            ),
          ],
        ),
        const Spacer(),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Text(
              userAnswer,
              style: MyColors.buttonText.copyWith(
                color: MyColors.resultClr,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.clockRotateLeft,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.ruler,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.squareRootVariable,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  if (userQuestion.isNotEmpty) {
                    userQuestion =
                        userQuestion.substring(0, userQuestion.length - 1);
                  }
                });
              },
              icon: const FaIcon(
                FontAwesomeIcons.deleteLeft,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget customButton({
    required Color backgroundClr,
    required Function callback,
    required String buttonText,
    required Color textClr,
  }) {
    return GestureDetector(
      onTap: () => callback(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Container(
          color: backgroundClr,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textClr,
                fontSize: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButtons() {
    final List<String> buttons = [
      'C',
      '()',
      '%',
      '/',
      '7',
      '8',
      '9',
      'x',
      '4',
      '5',
      '6',
      '-',
      '1',
      '2',
      '3',
      '+',
      '+/-',
      '0',
      '.',
      '=',
    ];

    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return customButton(
                backgroundClr: buttons[index] == 'C'
                    ? MyColors.cBackgroundClr
                    : buttons[index] == '='
                        ? MyColors.greenButtonTextClr
                        : MyColors.buttonBackgroundClr,
                buttonText: buttons[index],
                callback: () {
                  if (buttons[index] == 'C') {
                    setState(() {
                      if (userQuestion.isNotEmpty) {
                        userQuestion = '';
                        userAnswer = '';
                      }
                    });
                  } else if (buttons[index] == '()') {
                    setState(() {
                      if (userQuestion.isNotEmpty) {
                        userQuestion = '($userQuestion)';
                      }
                    });
                  } else if (buttons[index] == '+/-') {
                    setState(() {
                      debugPrint('The feature is yet to be implemented');
                    });
                  } else if (buttons[index] == '=') {
                    setState(() {
                      if (userQuestion.isNotEmpty) {
                        Parser p = Parser();
                        Expression exp =
                            p.parse(userQuestion.replaceAll('x', '*'));
                        ContextModel cm = ContextModel();
                        double eval = exp.evaluate(EvaluationType.REAL, cm);
                        userAnswer = eval.toString();
                      }
                    });
                  } else {
                    setState(() {
                      userQuestion += buttons[index];
                    });
                  }
                },
                textClr: buttons[index] == 'C' || buttons[index] == '='
                    ? MyColors.buttonBackgroundClr
                    : buttons[index] == '()' ||
                            buttons[index] == '%' ||
                            buttons[index] == '/' ||
                            buttons[index] == 'x' ||
                            buttons[index] == '-' ||
                            buttons[index] == '+'
                        ? MyColors.greenButtonTextClr
                        : MyColors.whiteButtonTextClr,
              );
            },
            childCount: buttons.length,
          ),
        )
      ],
    );
  }

  var userQuestion = '';
  var userAnswer = '';

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
                child: buildResult(),
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
                child: buildButtons(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
