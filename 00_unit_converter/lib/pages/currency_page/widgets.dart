import 'package:flutter/material.dart';
import 'package:unit_converter/constants/constants.dart';
import 'package:unit_converter/pages/currency_page/const.dart';

Widget customDropdownMenu(
  String value,
  Function onChange,
) {
  return Container(
    width: 150,
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 4,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 2,
        )),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        autofocus: true,
        dropdownColor: kButtonFillColor,
        focusColor: kFocusColor,
        value: value,
        iconSize: 36,
        icon: const Icon(Icons.arrow_downward_outlined),
        items: kCurrencyList
            .map<DropdownMenuItem<String>>((val) => DropdownMenuItem(
                  child: Text(val),
                  value: val,
                ))
            .toList(),
        onChanged: (value) {
          onChange(value);
        },
      ),
    ),
  );
}

Widget customTextField(
  TextEditingController amountController,
  Function onPress(value),
) =>
    TextField(  
      onSubmitted: (value) => onPress(value),
      decoration: InputDecoration(
        labelText: 'Enter Amount to Convert',
        labelStyle: kTextStyle,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        
      ),
      textInputAction: TextInputAction.done,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );

Widget customButton(
  Function onPress,
) {
  return MaterialButton(
    elevation: 5,
    onPressed: () {
      onPress();
    },
    child: const Text(
      'Convert',
      style: kButtonTextStyle,
    ),
    color: Colors.orange,
    padding: const EdgeInsets.all(16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
