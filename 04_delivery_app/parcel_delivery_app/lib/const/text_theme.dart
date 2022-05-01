import 'package:parcel_delivery_app/utils/component.dart';

class ParcelTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink,
    appBarTheme: const AppBarTheme(
      backgroundColor: kYellowColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(kBlackColor),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: kGreyColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x50333333),
        ),
      ),
    ),
    dividerColor: Colors.transparent,
    unselectedWidgetColor: const Color(0x50333333),
    shadowColor: const Color(0xffe6e6e6).withOpacity(0.5),
    backgroundColor: kWhiteColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Poppins',
    textSelectionTheme:
        const TextSelectionThemeData(selectionColor: Colors.green),
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Color(0x50333333),
      ),
      bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 21.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
