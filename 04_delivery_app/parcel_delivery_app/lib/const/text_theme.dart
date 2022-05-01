import 'package:parcel_delivery_app/utils/component.dart';
import 'package:google_fonts/google_fonts.dart';

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
    unselectedWidgetColor: const Color(0x50333333),
    shadowColor: const Color(0xffe6e6e6).withOpacity(0.5), 
    backgroundColor: kWhiteColor, 
    visualDensity: VisualDensity.adaptivePlatformDensity, 
    fontFamily: 'Poppins',
    textSelectionTheme:
        const TextSelectionThemeData(selectionColor: Colors.green),
    primaryTextTheme: TextTheme(
      bodyText1: GoogleFonts.poppins(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      headline1: GoogleFonts.openSans(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline2: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      headline3: GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline4: GoogleFonts.openSans(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline5: GoogleFonts.openSans(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline6: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: const Color(0x50333333),
      ),
      bodyText2:GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}


