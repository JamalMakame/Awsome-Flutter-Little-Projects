import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/widgets/buttons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  ListTile _singlePic() {
    return ListTile(
      leading: Container(
        height: 48.h,
        width: 48.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(
              'assets/profile/Avatar.jpg',
            ),
          ),
        ),
      ),
      title: SizedBox(
        width: 146.w,
        height: 40.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dean Winchester',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: kMainTextClr,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'now following you 1h',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: kOutlineClr,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      trailing: Expanded(
        child: primaryButton(
          buttonClr: kPrimaryClr,
          textClr: Colors.white,
          buttonText: 'Follow',
          buttonWidth: 87.w,
          buttonHeight: 39.h,
          onPressed: () {},
        ),
      ),
    );
  }

  SizedBox _multiPics() {
    return SizedBox(
      width: double.maxFinite,
      child: ListTile(
        leading: SizedBox(
          height: 65.h,
          width: 55.w,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 48.h,
                  width: 48.w,
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
                  height: 38.h,
                  width: 33.w,
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
                fontSize: 12.sp,
                color: kMainTextClr,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'liked your recipe  20 min',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: kOutlineClr,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        trailing: SizedBox(
          width: 64.w,
          child: const Image(
            fit: BoxFit.contain,
            image: AssetImage(
              'assets/profile/Cover.jpg',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'New',
                style: GoogleFonts.inter(
                  fontSize: 17.sp,
                  color: kMainTextClr,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              _singlePic(),
              Text(
                  'Today',
                  style: GoogleFonts.inter(
                    fontSize: 17.sp,
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
                    fontSize: 17.sp,
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
  }
}



//
//                 
//                 