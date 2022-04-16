import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  final currencyUrl = Uri.parse(
      'https://free.currconv.com/api/v7/currencies?&compact=ultra&apiKey=2a097d4a0fd794a24bfa');

  Future<List<String>> getCurrencies() async {
    http.Response response = await http.get(currencyUrl);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var list = body['results'];
      List<String> currencies = (list.keys).toList();
      //print(currencies);
      return currencies;
    } else {
      throw Exception('Failed to getCurrencies from API');
    }
  }

  Future<double> getRate(String from, String to) async {
    final rateUrl = Uri.parse(
        'https://free.currconv.com/api/v7/convert?q=${from}_$to&compact=ultra&apiKey=2a097d4a0fd794a24bfa');

    http.Response response = await http.get(rateUrl);

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print(body['${from}_$to']);
      return body['${from}_$to'];
    } else {
      throw Exception('Failed to getRate from API');
    }
  }
}
