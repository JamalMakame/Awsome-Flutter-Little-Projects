import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:math_expressions/math_expressions.dart';

import 'package:calculator_app/model/utils.dart';

class CalcController extends GetxController {
  final _equation = '0'.obs;
  final _result = '0'.obs;
  final _shouldAppend = false.obs;

  String get equation => _equation.value;

  String get result => _result.value;

  bool get shouldAppend => _shouldAppend.value;

  void calculate() {
    final expression = _equation.value.replaceAll('x', '*');

    try {
      final exp = Parser().parse(expression);
      final model = ContextModel();
      final result = '${exp.evaluate(EvaluationType.REAL, model)}';
      _result.value = result;
    } catch (e) {
      debugPrint('There is an error with Calculation method');
    }
  }

  void equals() {
    calculate();
  }

  void addBrackets() {
    _equation.value = '(${_equation.value})';
  }

  void negateResult() {
    if (_result.value == '0' || _result.value == '0.0') {
      _result.value =
          (int.tryParse(_equation.value, radix: 10)! * -1).toString();
    } else {
      _result.value = (int.tryParse(_result.value, radix: 10)! * -1).toString();
    }
  }

  void percentResult() {
    if (_result.value == '0' || _result.value == '0.0') {
      _result.value =
          (int.tryParse(_equation.value, radix: 10)! / 100).toString();
    } else {
      _result.value =
          (int.tryParse(_result.value, radix: 10)! / 100).toString();
    }
  }

  resetResult() {
    _result.value = '0';
    _equation.value = '0';
    _shouldAppend.value = false;
  }

  void delete() {
    final equation = _equation.value;

    if (equation.isNotEmpty) {
      final _newEquation = equation.substring(0, equation.length - 1);

      if (_newEquation.isEmpty) {
        _equation.value = '0';
        _result.value = '0';
      } else {
        _equation.value = _newEquation;
      }
    }
  }

  void append(String buttonText) {
    final equation = () {
      if (Utils.isOperator(buttonText) &&
          (Utils.isOperatorAtEnd(_equation.value))) {
        final _newEquation =
            _equation.value.substring(0, _equation.value.length - 1);
        return _newEquation + buttonText;
      } else if (_shouldAppend.value) {
        return _equation.value == '0'
            ? buttonText
            : _equation.value + buttonText;
      } else {
        return Utils.isOperator(buttonText)
            ? _equation.value + buttonText
            : buttonText;
      }
    }();

    _equation.value = equation;
    _shouldAppend.value = true;
  }
}
