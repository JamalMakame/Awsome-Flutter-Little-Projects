import 'package:flutter/material.dart';

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
