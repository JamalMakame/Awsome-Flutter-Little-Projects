import 'package:flutter/material.dart';

Widget customCards({
  required String projectNumber,
  required String projectTitle,
  required String projectDate,
}) {
  
  return SizedBox(
    width: 430,
    height: 230,
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
                width: 430,
                height: 230,
                child: Stack(children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 430,
                      height: 230,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          begin:
                              Alignment(0.0374455489218235, 0.7739855647087097),
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
                      child: //Mask holder Template
                          SizedBox(
                              width: 430,
                              height: 338.8391418457031,
                              child: null)),
                  Positioned(
                    top: 100,
                    left: 37,
                    child: SizedBox(
                      width: 400,
                      child: Flexible(
                        child: Text(
                          projectTitle,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 33,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                              maxLines: 1, 
                              softWrap: false, 
                              overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ]))),
        Positioned(
          top: 180,
          left: 37,
          child: Text(
            projectDate,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Poppins',
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1,
            ),
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
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Text(
                            'Project $projectNumber',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 22.422956466674805,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
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
        const Positioned(
          top: 37,
          left: 37,
          child: SizedBox(
            width: 50.95914840698242,
            height: 50.959129333496094,
            child: Image(
              image: AssetImage('assets/svg/Group 36.png'),
            ),
          ),
        ),
      ],
    ),
  );
}
