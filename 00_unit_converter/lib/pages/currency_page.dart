import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/constants/constants.dart';
import 'package:unit_converter/provider/navigation_provider.dart';
import 'package:unit_converter/widgets/navigation_drawer.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  final amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      setState(() {});
    });
  }

  Widget buildAmount() => TextField(
        controller: amountController,
        decoration: InputDecoration(
          labelText: 'Amount',
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
          prefixIcon: const Icon(Icons.money),
          suffixIcon: amountController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  onPressed: () {
                    amountController.clear();
                  },
                  icon: const Icon(Icons.close),
                ),
        ),
        textInputAction: TextInputAction.done,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
      );

  String index = 'EUR';
  final worldCurrencyList = [
    'EUR',
    'USD',
    'DZD',
    'ALL',
  ];
  Widget buildDropdownMenu() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          autofocus: true,
          focusColor: kFocusColor,
          value: index,
          isExpanded: true,
          iconSize: 36,
          icon: const Icon(Icons.arrow_downward_outlined),
          items: worldCurrencyList.map((value) {
            return DropdownMenuItem(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              index = value!;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(navigationItem.name.toUpperCase()),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: KeyboardDismisser(
          gestures: const [
            GestureType.onTap,
          ],
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Amount',
                  style: kTextStyle,
                ),
                buildAmount(),
                const Spacer(),
                const Text(
                  'From',
                  style: kTextStyle,
                ),
                buildDropdownMenu(),
                const Spacer(),
                const Text(
                  'To',
                  style: kTextStyle,
                ),
                buildDropdownMenu(),
                const Spacer(),
                MaterialButton(
                  elevation: 5,
                  onPressed: () {},
                  child: const Text(
                    'Convert',
                    style: kButtonTextStyle,
                  ),
                  color: Colors.orange,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
