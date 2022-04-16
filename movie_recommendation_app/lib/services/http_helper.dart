import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper {
  Uri movieUri = Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=014a339a747f65d15437b184d8974306');

  Future<String> getUpcoming() async {
    http.Response response = await http.get(movieUri);
    if (response.statusCode == 200) {
      String responseBody = response.body;
      print(responseBody);
      return responseBody;
    } else {
      throw Exception(
          'Error connecting to the API with status Code ${response.statusCode}');
    }
  }
}
