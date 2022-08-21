import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketbase/pocketbase.dart';

final client = PocketBase('http://10.0.2.2:8090');
//final client = PocketBase('http://127.0.0.1:8090');

// autheniticate as regular user

Future loginUser({
  required String email,
  required String password,
}) async {
  try {
    await client.users.authViaEmail(
      email,
      password,
    );
  } on SocketException {
    Get.snackbar(
      'Socket Exception Raised',
      'There is a problem connecting to the server',
      snackPosition: SnackPosition.BOTTOM,
    );
  } on HttpException {
    Get.snackbar(
      'HTTP Exception Raised',
      'There is a problem reaching the server',
      snackPosition: SnackPosition.BOTTOM,
    );
  } catch (error) {
    debugPrint("Error : ${error.toString()}");
    Get.snackbar(
      'Client Exception Raised',
      error.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
