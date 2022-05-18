
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskt/const/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  GestureDetector customFloatingButton({
    required String buttonText,
    required Color buttonClr,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 110,
        decoration: BoxDecoration(
          color: buttonClr,
          borderRadius: const BorderRadius.all(
            Radius.circular(75),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Jamal',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Have a nice day',
            style: Theme.of(context).primaryTextTheme.headline2,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customFloatingButton(
                  buttonClr: TodoColors.lightTextClr,
                  buttonText: 'My Tasks',
                ),
                customFloatingButton(
                  buttonClr: Colors.deepPurple.shade300,
                  buttonText: 'In-Progress',
                ),
                customFloatingButton(
                  buttonClr: Colors.deepPurple.shade300,
                  buttonText: 'Completed',
                ),
              ],
            ),
          ),
          // CustomScrollView(
          //   //shrinkWrap: true,
          //   //scrollDirection: Axis.horizontal,
          //   slivers: [
          //     customCards(),
          //   ],
          // ),
        ],
      ),
    );
  }
}

Widget customCards() {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return SizedBox(
          width: 341,
          height: 339,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: 341,
                  height: 339,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 341,
                          height: 338.35491943359375,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                  0.0374455489218235, 0.7739855647087097),
                              end: Alignment(
                                  -0.7739855647087097, 0.06429413706064224),
                              colors: [
                                Color.fromRGBO(156, 44, 243, 1),
                                Color.fromRGBO(58, 72, 248, 1)
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                          top: 0.16085033118724823,
                          left: 0,
                          child: SizedBox(
                              width: 341,
                              height: 338.8391418457031,
                              child: null)),
                      const Positioned(
                        top: 126,
                        left: 37,
                        child: Text(
                          'Front-End Development',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 33,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                top: 272,
                left: 37,
                child: Text(
                  'October 20, 2020',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
              Positioned(
                top: 47,
                left: 106,
                child: SizedBox(
                  width: 203,
                  height: 33.99208450317383,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                          width: 203,
                          height: 33.99208450317383,
                          child: Stack(
                            children: const <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'Project 1',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 22.422956466674805,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 37,
                left: 37,
                child: SizedBox(
                  width: 50.95914840698242,
                  height: 50.959129333496094,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: SvgPicture.asset('assets/images/vector.svg',
                              semanticsLabel: 'vector')),
                      Positioned(
                        top: 6.687644004821777,
                        left: 6.68764591217041,
                        child: SvgPicture.asset(
                            'assets/images/projectmanagement1traced.svg',
                            semanticsLabel: 'projectmanagement1traced'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      childCount: 3,
    ),
  );
}
