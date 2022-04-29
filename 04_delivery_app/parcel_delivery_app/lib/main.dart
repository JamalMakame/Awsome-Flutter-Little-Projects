import 'package:parcel_delivery_app/utils/component.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Parcel Delivery App',
      theme: ParcelTheme.theme(),
      home: const Scaffold(
        backgroundColor: kWhiteColor,
        body: HomePage(),
      ),
    );
  }
}
