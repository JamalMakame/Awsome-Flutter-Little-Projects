import 'package:flutter/material.dart';

const kPadding = 5.0;

Widget customButton(
  Color color,
  String text,
  //double size,
  VoidCallback onPress,
) {
  return MaterialButton(
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    ),
    onPressed: onPress,
    color: color,
    //minWidth: size,
  );
}

