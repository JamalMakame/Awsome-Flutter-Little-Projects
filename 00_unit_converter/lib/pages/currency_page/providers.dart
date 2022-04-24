import 'package:flutter/material.dart';
import 'package:unit_converter/pages/currency_page/services.dart';

class CurrencyProvider extends ChangeNotifier {
  ApiClient client = ApiClient();
  late String from;
  late String to;

  String _result='';

  get result => _result;

  setRate(String from, String to, TextEditingController amountController) {
    (() async {
      var rate = await client.getRate(from, to);
      _result = (rate * double.parse(amountController.text)).toStringAsFixed(2);
    });
    notifyListeners();
  }

  setFrom(value) {
    from = value;
    notifyListeners();
  }

  setTo(value) {
    to = value;
    notifyListeners();
  }

  setChangeStrings() {
    String temp = from;
    from = to;
    to = temp;
    notifyListeners();
  }
}

