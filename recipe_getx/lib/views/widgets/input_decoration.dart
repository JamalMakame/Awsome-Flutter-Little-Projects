import 'package:flutter/material.dart';

InputDecoration? inputDecoration = InputDecoration(
  fillColor: Colors.grey.shade100,
  filled: true,
  focusedBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      width: 2,
      color: Color(0xffffdc3d),
    ),
  ),
  enabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(width: 2, color: Colors.white),
  ),
);
