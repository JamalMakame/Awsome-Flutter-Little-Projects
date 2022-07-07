import 'package:flutter/material.dart';

import '../models/onboard_page_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Getting Started'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: buildPages(),
            ),
            buildIndicator(),
            buildActionButtons(),
          ],
        ),
      ),
    );
  }
}
