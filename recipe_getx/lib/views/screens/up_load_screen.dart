import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Upload Screen',
            style: GoogleFonts.inter(
              fontSize: 42,
            ),
          ),
        ),
      ),
    );;
  }
}