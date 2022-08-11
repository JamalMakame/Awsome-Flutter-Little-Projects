import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;



class HttpService {
  static Future<String?> get(String baseUrl) async {
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

