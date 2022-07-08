import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

const String apiKey = '825558b3b34b97e3ee27cdb577e18c72';
const String apiId = '1ea1cdb6';
const String apiUrl = 'https://api.edamam.com/api/recipes/v2';

class RecipeService {
  Future getData() async {
    final client = RetryClient(http.Client());

    try {
      final request = await client.get(
        Uri.parse(
          '$apiUrl?type=public&q=chicken&app_id=$apiId&app_key=$apiKey',
        ),
      );
      debugPrint(request.body);
    } on SocketException catch (error) {
      // If there's no internet connect
      debugPrint(error.toString());
    } on HttpException catch (error) {
      // if the status code is not 200
      debugPrint(error.toString());
    } on FormatException catch (error) {
      // if json String from the server isn't in proper JSON format
      debugPrint(error.toString());
    }
  }
}
