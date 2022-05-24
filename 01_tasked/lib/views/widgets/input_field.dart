import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

Widget MyInputField({
  required String title,
  required String hint,
  required TextEditingController? controller,
}) {
  return Container(
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: TodoColors.lightTextClr,
            fontWeight: FontWeight.w500,
            fontSize: 23,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 52,
          margin: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  autofocus: false,
                  cursorColor: Colors.grey,
                  controller: controller,
                  style: const TextStyle(
                    color: TodoColors.lightTextClr,
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: const TextStyle(
                      color: TodoColors.lightTextClr,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      fontFamily: 'Poppins',
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
