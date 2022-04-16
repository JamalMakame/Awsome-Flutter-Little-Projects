import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/constants/constants.dart';
import 'package:unit_converter/pages/currency_page/providers.dart';
import 'package:unit_converter/pages/currency_page/services.dart';
import 'package:unit_converter/pages/currency_page/widgets.dart';
import 'package:unit_converter/provider/navigation_provider.dart';
import 'package:unit_converter/widgets/navigation_drawer.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  ApiClient client = ApiClient();
  String result = '';

  String from = 'USD';
  String to = 'TZS';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onSubmitted: (value) {
                  ((value) async {
                    var rate = await client.getRate(from, to);
                    setState(() {
                      result = (rate * double.parse(value)).toStringAsFixed(2);
                      //print(result);
                    });
                  });
                },
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
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customDropdownMenu(
                    from,
                    (value) {
                      setState(() {
                        from = value;
                      });
                    },
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      String temp = from;
                      setState(() {
                        from = to;
                        to = temp;
                      });
                    },
                    child: const Icon(
                      Icons.swap_horiz_outlined,
                    ),
                    backgroundColor: Colors.orange[300],
                  ),
                  customDropdownMenu(
                    to,
                    (value) {
                      setState(() {
                        to = value;
                      });
                    },
                  ),
                ],
              ),
              
              const SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      'Result',
                      style: kTextStyle,
                    ),
                    Text(
                      result,
                      style: kTextStyle,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: (Colors.black))),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
