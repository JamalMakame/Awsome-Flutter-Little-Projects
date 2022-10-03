import 'package:flutter/material.dart';
import 'package:fooderlich/api/theme_services.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/screens/screens.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    const Fooderlich(),
  );
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FooderlichTheme.light(),
      darkTheme: FooderlichTheme.dark(),
      themeMode: ThemeService().theme,
      title: 'Fooderlich',
      initialRoute: '/',
      home: const SplashScreen(),
    );
  }
}
