import 'package:flutter/material.dart';

class MyHomePage0 extends StatelessWidget {
  const MyHomePage0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 640,
              decoration: const BoxDecoration(
                color: Color(
                  0xffffffff,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 267,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 320,
                      height: 95,
                      decoration: const BoxDecoration(
                        color: Color(
                          0xffffffff,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x2d000000,
                            ),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 244,
                    top: 10,
                    child: Text(
                      "November 3, 2019",
                      style: TextStyle(
                        color: Color(
                          0xff8d8d8d,
                        ),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 268,
                    top: 56,
                    child: Text(
                      "500",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    top: 57,
                    child: Text(
                      "₹",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 270,
                    top: 39,
                    child: Text(
                      "You Owe",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 50,
                    child: Text(
                      "Car",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 72,
                    child: Text(
                      "Added by Subodh Kolhe",
                      style: TextStyle(
                        color: Color(
                          0xff8e8e8e,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 320,
              height: 95,
            ),
          ),
          Positioned(
            left: 20,
            top: 377,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 320,
                      height: 95,
                      decoration: const BoxDecoration(
                        color: Color(
                          0xffffffff,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x2d000000,
                            ),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 244,
                    top: 10,
                    child: Text(
                      "November 3, 2019",
                      style: TextStyle(
                        color: Color(
                          0xff8d8d8d,
                        ),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 268,
                    top: 56,
                    child: Text(
                      "500",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    top: 57,
                    child: Text(
                      "₹",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 270,
                    top: 39,
                    child: Text(
                      "You Owe",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 50,
                    child: Text(
                      "Hotel",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 72,
                    child: Text(
                      "Added by Subodh Kolhe",
                      style: TextStyle(
                        color: Color(
                          0xff8e8e8e,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 320,
              height: 95,
            ),
          ),
          Positioned(
            left: 20,
            top: 487,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 320,
                      height: 95,
                      decoration: const BoxDecoration(
                        color: Color(
                          0xffffffff,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x2d000000,
                            ),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 244,
                    top: 10,
                    child: Text(
                      "November 3, 2019",
                      style: TextStyle(
                        color: Color(
                          0xff8d8d8d,
                        ),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 268,
                    top: 56,
                    child: Text(
                      "500",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    top: 57,
                    child: Text(
                      "₹",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 270,
                    top: 39,
                    child: Text(
                      "You Owe",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 50,
                    child: Text(
                      "Food",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 72,
                    child: Text(
                      "Added by Subodh Kolhe",
                      style: TextStyle(
                        color: Color(
                          0xff8e8e8e,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 320,
              height: 95,
            ),
          ),
          Positioned(
            left: 20,
            top: 597,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 320,
                      height: 95,
                      decoration: const BoxDecoration(
                        color: Color(
                          0xffffffff,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x2d000000,
                            ),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 244,
                    top: 10,
                    child: Text(
                      "November 3, 2019",
                      style: TextStyle(
                        color: Color(
                          0xff8d8d8d,
                        ),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 268,
                    top: 56,
                    child: Text(
                      "500",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    top: 57,
                    child: Text(
                      "₹",
                      style: TextStyle(
                        color: Color(
                          0xff474747,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 270,
                    top: 39,
                    child: Text(
                      "You Owe",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 50,
                    child: Text(
                      "Expense Name",
                      style: TextStyle(
                        color: Color(
                          0xff606060,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    top: 72,
                    child: Text(
                      "Added by Subodh Kolhe",
                      style: TextStyle(
                        color: Color(
                          0xff8e8e8e,
                        ),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lato",
                        letterSpacing: 0,
                      ),
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 320,
              height: 95,
            ),
          ),
          Positioned(
            left: 290,
            top: 570,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color(
                          0xff4cbb9b,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(
                              0x3f000000,
                            ),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.81,
                    top: 10.81,
                    right: 10.81,
                    bottom: 10.81,
                    child: Image.network(
                      "https://assets-reservation/images/52:7",
                      width: 28.38,
                      height: 28.38,
                      semanticLabel: "icon",
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            left: 34,
            top: 500,
            right: 304.87,
            bottom: 115,
            child: Image.network(
              "grida://assets-reservation/images/70:49",
              width: 21.13,
              height: 25,
            ),
          ),
          Positioned(
            left: 34,
            top: 610,
            right: 304.87,
            bottom: 5,
            child: Image.network(
              "grida://assets-reservation/images/70:83",
              width: 21.13,
              height: 25,
            ),
          ),
          Positioned(
            left: 30,
            top: 285,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 4.45,
                    top: 8.44,
                    right: 19.92,
                    bottom: 0,
                    child: Image.network(
                      "grida://assets-reservation/images/70:53",
                      width: 5.63,
                      height: 5.63,
                    ),
                  ),
                  Positioned(
                    left: 20.86,
                    top: 8.44,
                    right: 3.52,
                    bottom: 0,
                    child: Image.network(
                      "grida://assets-reservation/images/70:54",
                      width: 5.63,
                      height: 5.63,
                    ),
                  ),
                  Positioned(
                    left: 10.31,
                    top: 1.88,
                    right: 13.36,
                    bottom: 8.91,
                    child: Image.network(
                      "grida://assets-reservation/images/70:55",
                      width: 6.33,
                      height: 3.28,
                    ),
                  ),
                  Positioned(
                    left: 17.58,
                    top: 1.88,
                    right: 6.33,
                    bottom: 8.91,
                    child: Image.network(
                      "grida://assets-reservation/images/70:56",
                      width: 6.09,
                      height: 3.28,
                    ),
                  ),
                  Positioned(
                    left: 11.02,
                    top: 10.78,
                    right: 10.08,
                    bottom: 2.34,
                    child: Image.network(
                      "grida://assets-reservation/images/70:57",
                      width: 8.91,
                      height: 0.94,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 2.34,
                    child: Image.network(
                      "grida://assets-reservation/images/70:58",
                      width: 30,
                      height: 11.72,
                    ),
                  ),

                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                  Container(),
                ],
              ),
              width: 30,
              height: 14.06,
            ),
          ),
          Positioned(
            left: 33,
            top: 390,
            child: Image.network(
              "grida://assets-reservation/images/70:82",
              width: 25,
              height: 25,
              semanticLabel: "icon",
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 247,
              decoration: const BoxDecoration(
                color: Color(
                  0xff4cbb9b,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 135,
            top: 16,
            child: Text(
              "SPLITWISE",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            left: 321,
            top: 15,
            child: Image.network(
              "grida://assets-reservation/images/31:60",
              width: 24,
              height: 24,
              semanticLabel: "icon",
            ),
          ),
          Positioned(
            left: 149,
            top: 57,
            child: Container(
              width: 62,
              height: 62,
              decoration: const BoxDecoration(
                color: Color(
                  0xffffffff,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 139,
            child: Text(
              "Subodh Kolhe",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          const Positioned(
            left: 169,
            top: 67,
            child: Text(
              "S",
              style: TextStyle(
                color: Color(
                  0xffe60202,
                ),
                fontSize: 36,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto",
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 15,
            right: 330.23,
            bottom: 601,
            child: Image.network(
              "grida://assets-reservation/images/32:5",
              width: 14.77,
              height: 24,
            ),
          ),
          const Positioned(
            left: 258,
            top: 135,
            child: Text(
              "500",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          const Positioned(
            left: 245,
            top: 136,
            child: Text(
              "₹",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 163,
            child: Text(
              "You owe",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 197,
            child: Container(
              width: 120,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(
                  0xff288369,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                      0x7f157b5d,
                    ),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 200,
            top: 197,
            child: Container(
              width: 120,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(
                  0xff288369,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                      0x7f147a5c,
                    ),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 76,
            top: 205,
            child: Text(
              "Settle Up",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),
          const Positioned(
            left: 220,
            top: 205,
            child: Text(
              "Send Reminder",
              style: TextStyle(
                color: Color(
                  0xffffffff,
                ),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: "Lato",
                letterSpacing: 0,
              ),
            ),
          ),

          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
          Container(),
        ],
      ),
    );
  }
}
