import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Get.arguments['Title']),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
              child: Image(
                image: AssetImage(Get.arguments['DishImage']),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              Get.arguments['Course'],
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              Get.arguments['Price'],
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              Get.arguments['Cuisine'],
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              Get.arguments['Skill Level'],
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              Get.arguments['Prep Time'],
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            GestureDetector(
              child: Text(
                Get.arguments['Source'],
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              onTap: () {
                Get.to(
                  () => Scaffold(
                    appBar: AppBar(),
                    body: const WebView(
                      initialUrl: 'https://https://pixabay.com/',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
