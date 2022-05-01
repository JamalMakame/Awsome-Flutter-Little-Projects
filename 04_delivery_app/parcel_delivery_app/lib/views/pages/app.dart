import 'package:parcel_delivery_app/utils/component.dart';

//

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  static List<Widget> pages = [
    const HomePage(),
    const SendParcelScreen(),
    Container(
      color: Colors.amber.shade700,
    )
  ];

  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Parcel Delivery App',
      theme: ParcelTheme.theme,
      home: Scaffold(
        body: pages[_selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: const IconThemeData(
            size: 32,
          ),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: Theme.of(context).primaryTextTheme.headline5,
          unselectedLabelStyle: Theme.of(context).primaryTextTheme.headline5,
          selectedItemColor: kLinearBlackGradientColor,
          currentIndex: _selectedItem,
          onTap: (int index) {
            setState(() {
              _selectedItem = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _selectedItem == 0
                  ? const SvgIcon('assets/Icon/Tab bar/My parcels.svg')
                  : const SvgIcon(
                      'assets/Icon/Tab bar/Nav/Tab bar/Item/Inactive.svg'),
              label: 'My Parcels',
            ),
            BottomNavigationBarItem(
              icon: _selectedItem == 1
                  ? const SvgIcon('assets/Icon/Tab bar/Send parcels.svg')
                  : const SvgIcon(
                      'assets/Icon/Tab bar/Navbar/Item/Inactive.svg'),
              label: 'Send Parcel',
            ),
            BottomNavigationBarItem(
                icon: _selectedItem == 2
                    ? const SvgIcon('assets/Icon/Tab bar/Parcel Center.svg')
                    : const SvgIcon(
                        'assets/Icon/Tab bar/Navbar/Item/Inactive Copy.svg'),
                label: 'Parcel Center'),
          ],
        ),
      ),
    );
  }
}
