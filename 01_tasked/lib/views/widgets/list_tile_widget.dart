import 'package:flutter/material.dart';

Widget customTile({
  required String projectTitle,
  required String lastChangedTime,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20,),
    child: SizedBox(
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
                          color: Color.fromRGBO(0, 0, 0, 0.019999999552965164),
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
                    const Positioned(
                      top: 0,
                      left: 0,
                      child: Image(
                        image: AssetImage('assets/svg/Vector.png'),
                      ),
                    ),
                    const Positioned(
                      top: 15,
                      left: 18,
                      child: Image(
                        image: AssetImage('assets/svg/to-do-list 1 (Traced).png'),
                      ),
                    ),
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
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text(
                                            projectTitle,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                color:
                                                    Color.fromRGBO(36, 39, 54, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 22.422956466674805,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          ),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 32.99431610107422,
                                  left: 0,
                                  child: Text(
                                    lastChangedTime,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(174, 174, 179, 1),
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
            child: GestureDetector(
                onTap: () {
                  debugPrint('Tapped');
                },
                child: const Image(
                  image: AssetImage('assets/svg/Group 40.png'),
                )),
          ),
        ])),
  );
}
