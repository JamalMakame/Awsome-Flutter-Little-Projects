import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://www.bonappetit.com/ingredient/rice';

class HttpService {
  static Future<String?> get() async {
    try {
      final response = await http.get(
        Uri.parse(baseUrl),
      );
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (error) {
      debugPrint('HttpService: $error');
    }
    return null;
  }
}

