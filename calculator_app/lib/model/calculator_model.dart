class Calculator {
  Calculator({
    this.shouldAppend = true,
    this.equation = '0',
    this.result = '0',
  });

  late final String equation;
  final String result;
  final bool shouldAppend;

  Calculator copyWith({
    bool? shouldAppend,
    String? equation,
    String? result,
  }) {
    return Calculator(
      shouldAppend: shouldAppend ?? this.shouldAppend,
      equation: equation ?? this.equation,
      result: result ?? this.result,
    );
  }
}
