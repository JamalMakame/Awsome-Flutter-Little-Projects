import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketbase/pocketbase.dart';

final client = PocketBase('http://10.0.2.2:8090');

class UserAuth {
// autheniticate as regular user

  Future loginUser({
    required String email,
    required String password,
  }) async {
    try {
      var loginResponse = await client.users.authViaEmail(
        email,
        password,
      );
      return loginResponse;
    } catch (error) {
      debugPrint("Error : ${error.toString()}");
      Get.snackbar(
        'Client Exception Raised',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 9),
      );
    }
  }

  Future signInUser({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      // create user
      var signInResponse = await client.users.create(body: {
        'email': email,
        'password': password,
        'passwordConfirm': confirmPassword,
      });
      if (signInResponse.id.isNotEmpty) {
        // set user profile data
        await client.records.update(
          'profiles',
          signInResponse.profile!.id,
          body: {
            'name': name,
          },
        );

        // send verification email
        await client.users.requestVerification(
          signInResponse.email,
        );
      }
      return signInResponse;
    } catch (error) {
      debugPrint("Error : ${error.toString()}");
      Get.snackbar(
        'Client Exception Raised',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 9),
      );
    }
  }
}
