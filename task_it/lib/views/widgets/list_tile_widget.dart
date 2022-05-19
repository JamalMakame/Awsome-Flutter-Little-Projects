

import 'package:flutter/material.dart';

Widget customTile() {
  return SizedBox(
      width: 518,
      height: 122,
      child: Stack(children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: Container(
                width: 518,
                height: 122,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.019999999552965164),
                        offset: Offset(0, -7),
                        blurRadius: 23)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ))),
        Positioned(
            top: 30,
            left: 32,
            child: SizedBox(
                width: 274.0002746582031,
                height: 60.95919418334961,
                child: Stack(children: <Widget>[
                  // Positioned(
                  //   top: 0,
                  //   left: 0,
                  //   child: SvgPicture.asset('assets/images/vector.svg',
                  //       semanticsLabel: 'vector'),
                  // ),
                  // Positioned(
                  //   top: 15,
                  //   left: 18,
                  //   child: SvgPicture.asset('assets/images/todolist1traced.svg',
                  //       semanticsLabel: 'todolist1traced'),
                  // ),
                  Positioned(
                      top: 0,
                      left: 86,
                      child: SizedBox(
                          width: 188.00027465820312,
                          height: 57.921844482421875,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0.00028168148128315806,
                                child: SizedBox(
                                    width: 188,
                                    height: 34,
                                    child: Stack(children: const <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text(
                                            'Project Changes',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    36, 39, 54, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 22.422956466674805,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                    ]))),
                            const Positioned(
                                top: 32.99431610107422,
                                left: 0,
                                child: Text(
                                  '2 Days ago',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(
                                          174, 174, 179, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16.480947494506836,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                          ]))),
                ]))),
        Positioned(
            top: 46.99988555908203,
            left: 478.00006103515625,
            child: SizedBox(
                width: 6.999950408935547,
                height: 28.77772331237793,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 6.999950408935547,
                          height: 6.999950408935547,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(216, 222, 243, 1),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(
                                    6.999950408935547, 6.999950408935547)),
                          ))),
                  Positioned(
                      top: 10.888672828674316,
                      left: 0,
                      child: Container(
                          width: 6.999950408935547,
                          height: 6.999950408935547,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(216, 222, 243, 1),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(
                                    6.999950408935547, 6.999950408935547)),
                          ))),
                  Positioned(
                      top: 21.777772903442383,
                      left: 0,
                      child: Container(
                          width: 6.999950408935547,
                          height: 6.999950408935547,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(216, 222, 243, 1),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(
                                    6.999950408935547, 6.999950408935547)),
                          ))),
                ]))),
      ]));
}
