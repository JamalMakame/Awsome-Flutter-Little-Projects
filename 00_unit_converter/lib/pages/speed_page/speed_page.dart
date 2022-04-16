import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/provider/navigation_provider.dart';
import 'package:unit_converter/widgets/navigation_drawer.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(navigationItem.name.toUpperCase()),
      ),
    );
  }
}
