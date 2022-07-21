import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'New',
                style: GoogleFonts.inter(
                  fontSize: 27,
                  color: kMainTextClr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _singlePic(),
              Text(
                'Today',
                style: GoogleFonts.inter(
                  fontSize: 27,
                  color: kMainTextClr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _multiPics(),
              _singlePic(),
              _multiPics(),
              Text(
                'Yesterday',
                style: GoogleFonts.inter(
                  fontSize: 27,
                  color: kMainTextClr,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _multiPics(),
              _singlePic(),
              _multiPics(),
            ],
          ),
        ),
      ),
    );
    ;
  }

  SizedBox _singlePic() {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: ListTile(
        leading: Container(
          height: 58,
          width: 58,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/profile/Avatar.jpg',
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dean Winchester',
              style: GoogleFonts.inter(
                fontSize: 17,
                color: kMainTextClr,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'now following you 1h',
              style: GoogleFonts.inter(
                fontSize: 17,
                color: kOutlineClr,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        trailing: SizedBox(
          height: 60,
          width: 200,
          child: primaryButton(
            buttonClr: kPrimaryClr,
            textClr: Colors.white,
            buttonText: 'Follow',
            buttonWidth: 200,
            buttonHeight: 55,
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  SizedBox _multiPics() {
    return SizedBox(
      width: double.maxFinite,
      child: ListTile(
        leading: SizedBox(
          height: 90,
          width: 80,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 58,
                  width: 58,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/profile/Avatar (2).jpg',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 17,
                left: 0,
                child: Container(
                  height: 48,
                  width: 43,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/profile/Avatar (3).jpg',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Steve and \nSam Winchester',
              style: GoogleFonts.inter(
                fontSize: 17,
                color: kMainTextClr,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'liked your recipe  20 min',
              style: GoogleFonts.inter(
                fontSize: 17,
                color: kOutlineClr,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        trailing: const SizedBox(
          width: 200,
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage(
              'assets/profile/Cover.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
