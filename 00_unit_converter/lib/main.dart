import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/model/navigation_item.dart';
import 'package:unit_converter/pages/basic_page/basic_page.dart';
import 'package:unit_converter/pages/currency_page/currency_page.dart';
import 'package:unit_converter/pages/currency_page/providers.dart';
import 'package:unit_converter/pages/length_page/length_page.dart';
import 'package:unit_converter/pages/scientific_page/scientific_page.dart';
import 'package:unit_converter/pages/speed_page/speed_page.dart';
import 'package:unit_converter/pages/temp_page/temp_page.dart';
import 'package:unit_converter/pages/time_page/time_page.dart';
import 'package:unit_converter/pages/weight_page/weight_page.dart';
import 'package:unit_converter/provider/navigation_provider.dart';
import 'package:unit_converter/widgets/navigation_drawer.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(create: (context) => NavigationProvider()), 
        ListenableProvider(create: (context) => CurrencyProvider()),
      ],
      
      child: MaterialApp(
        theme: ThemeData().copyWith(
          appBarTheme: AppBarTheme(
            centerTitle: true, 
            color: Colors.black, 
            iconTheme: const IconThemeData().copyWith(
              size: 41,
              color: Colors.white,
            )
          )
        ),
        home: const Scaffold(
          drawer: NavigationDrawerWidget(),
          body: MainPage(),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.currency:
        return const CurrencyPage();
      case NavigationItem.length:
        return const LengthPage();
      case NavigationItem.temperature:
        return const TemperaturePage();
      case NavigationItem.speed:
        return const SpeedPage();
      case NavigationItem.time:
        return const TimePage();
      case NavigationItem.weight:
        return const WeightPage();
      case NavigationItem.basic:
        return const BasicPage();
      case NavigationItem.scientific:
        return const ScientificPage();

      default:
        return const MainPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildPages();
  }
}
