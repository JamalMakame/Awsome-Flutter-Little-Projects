// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MyHomePage - FRAME

    return Container(
        width: 360,
        height: 640,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 360,
                  height: 640,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 267,
              left: 20,
              child: SizedBox(
                  width: 320,
                  height: 95,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 320,
                            height: 95,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.18000000715255737),
                                    offset: Offset(0, 0),
                                    blurRadius: 2)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    const Positioned(
                      top: 10,
                      left: 244,
                      child: Text(
                        'November 3, 2019',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(141, 141, 141, 1),
                            fontFamily: 'Lato',
                            fontSize: 8,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    const Positioned(
                        top: 56,
                        left: 268,
                        child: Text(
                          '500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 57,
                        left: 255,
                        child: Text(
                          '₹',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 39,
                        left: 270,
                        child: Text(
                          'You Owe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Car',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 72,
                        left: 10,
                        child: Text(
                          'Added by Subodh Kolhe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(142, 142, 142, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 377,
              left: 20,
              child: SizedBox(
                  width: 320,
                  height: 95,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 320,
                            height: 95,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.18000000715255737),
                                    offset: Offset(0, 0),
                                    blurRadius: 2)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    const Positioned(
                        top: 10,
                        left: 244,
                        child: Text(
                          'November 3, 2019',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(141, 141, 141, 1),
                              fontFamily: 'Lato',
                              fontSize: 8,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 56,
                        left: 268,
                        child: Text(
                          '500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 57,
                        left: 255,
                        child: Text(
                          '₹',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 39,
                        left: 270,
                        child: Text(
                          'You Owe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Hotel',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 72,
                        left: 10,
                        child: Text(
                          'Added by Subodh Kolhe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(142, 142, 142, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 487,
              left: 20,
              child: SizedBox(
                  width: 320,
                  height: 95,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 320,
                            height: 95,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.18000000715255737),
                                    offset: Offset(0, 0),
                                    blurRadius: 2)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    const Positioned(
                        top: 10,
                        left: 244,
                        child: Text(
                          'November 3, 2019',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(141, 141, 141, 1),
                              fontFamily: 'Lato',
                              fontSize: 8,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 56,
                        left: 268,
                        child: Text(
                          '500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 57,
                        left: 255,
                        child: Text(
                          '₹',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 39,
                        left: 270,
                        child: Text(
                          'You Owe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Food',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 72,
                        left: 10,
                        child: Text(
                          'Added by Subodh Kolhe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(142, 142, 142, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 597,
              left: 20,
              child: SizedBox(
                  width: 320,
                  height: 95,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 320,
                            height: 95,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.18000000715255737),
                                    offset: Offset(0, 0),
                                    blurRadius: 2)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    const Positioned(
                        top: 10,
                        left: 244,
                        child: Text(
                          'November 3, 2019',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(141, 141, 141, 1),
                              fontFamily: 'Lato',
                              fontSize: 8,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 56,
                        left: 268,
                        child: Text(
                          '500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 57,
                        left: 255,
                        child: Text(
                          '₹',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(71, 71, 71, 1),
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 39,
                        left: 270,
                        child: Text(
                          'You Owe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Expense Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(96, 96, 96, 1),
                              fontFamily: 'Lato',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 72,
                        left: 10,
                        child: Text(
                          'Added by Subodh Kolhe',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(142, 142, 142, 1),
                              fontFamily: 'Lato',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 570,
              left: 290,
              child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 0),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(76, 187, 155, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(50, 50)),
                            ))),
                    Positioned(
                        top: 10.810811042785645,
                        left: 10.810811042785645,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))),
          Positioned(
              top: 500,
              left: 34,
              child: SvgPicture.asset('assets/svgImages/vector.svg',
                  semanticsLabel: 'vector')),
          Positioned(
              top: 610,
              left: 34,
              child: SvgPicture.asset('assets/svgImages/vector.svg',
                  semanticsLabel: 'vector')),
          Positioned(
              top: 285,
              left: 30,
              child: SizedBox(
                  width: 30,
                  height: 14.062557220458984,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 8.437557220458984,
                        left: 4.4532036781311035,
                        child: SvgPicture.asset('assets/svgImages/vector1.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 8.437557220458984,
                        left: 20.859539031982422,
                        child: SvgPicture.asset('assets/svgImages/vector2.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 1.8752717971801758,
                        left: 10.312628746032715,
                        child: SvgPicture.asset('assets/svgImages/vector3.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 1.8750572204589844,
                        left: 17.57823944091797,
                        child: SvgPicture.asset('assets/svgImages/vector4.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 10.781307220458984,
                        left: 11.015731811523438,
                        child: SvgPicture.asset('assets/svgImages/vector5.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SvgPicture.asset('assets/svgImages/vector6.svg',
                            semanticsLabel: 'vector')),
                  ]))),
          Positioned(
              top: 390,
              left: 33,
              child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 2,
                        left: 17.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 7,
                        left: 17.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 12,
                        left: 17.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 2,
                        left: 12.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 7,
                        left: 12.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 12,
                        left: 12.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 11,
                        left: 3.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 14,
                        left: 3.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 17,
                        left: 3.5,
                        child: SvgPicture.asset('assets/svgImages/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 360,
                  height: 247,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color.fromRGBO(76, 187, 155, 1),
                  ))),
          const Positioned(
              top: 16,
              left: 135,
              child: Text(
                'SPLITWISE',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 15,
              left: 321,
              child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration())),
                    Positioned(
                        top: 0,
                        left: 9,
                        child: Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(6, 6)),
                            ))),
                    Positioned(
                        top: 18,
                        left: 9,
                        child: Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(6, 6)),
                            ))),
                    Positioned(
                        top: 9,
                        left: 9,
                        child: Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(6, 6)),
                            ))),
                  ]))),
          Positioned(
              top: 57,
              left: 149,
              child: Container(
                  width: 62,
                  height: 62,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(62, 62)),
                  ))),
          const Positioned(
              top: 139,
              left: 20,
              child: Text(
                'Subodh Kolhe',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 67,
              left: 169,
              child: Text(
                'S',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(230, 2, 2, 1),
                    fontFamily: 'Roboto',
                    fontSize: 36,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
            top: 15,
            left: 15,
            child: SvgPicture.asset('assets/svgImages/vector.svg',
                semanticsLabel: 'vector'),
          ),
          const Positioned(
              top: 135,
              left: 258,
              child: Text(
                '500',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 136,
              left: 245,
              child: Text(
                '₹',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 163,
              left: 20,
              child: Text(
                'You owe',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 197,
              left: 40,
              child: Container(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(21, 123, 93, 0.5),
                          offset: Offset(0, 0),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(40, 131, 105, 1),
                  ))),
          Positioned(
              top: 197,
              left: 200,
              child: Container(
                  width: 120,
                  height: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(20, 122, 92, 0.5),
                          offset: Offset(0, 0),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(40, 131, 105, 1),
                  ))),
          const Positioned(
              top: 205,
              left: 76,
              child: Text(
                'Settle Up',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 205,
              left: 220,
              child: Text(
                'Send Reminder',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
