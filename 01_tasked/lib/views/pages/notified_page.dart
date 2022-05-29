import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';

class NotifiedPage extends StatelessWidget {
  final String label;
  const NotifiedPage({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 32,
            color: TodoColors.iconClr,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Hello, Jamal',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: TodoColors.lightTextClr,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You have a new reminder',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: TodoColors.lightTextClr,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.62,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 42,
                      ),
                      title: Text(
                        'Title',
                        style: Theme.of(context).primaryTextTheme.headline5,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      label.toString().split('|')[0],
                      style: Theme.of(context).primaryTextTheme.headline5,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.assignment,
                        color: Colors.white,
                        size: 42,
                      ),
                      title: Text(
                        'Description',
                        style: Theme.of(context).primaryTextTheme.headline5,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      label.toString().split('|')[1],
                      style: Theme.of(context).primaryTextTheme.headline5,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 42,
                      ),
                      title: Text(
                        'Time',
                        style: Theme.of(context).primaryTextTheme.headline5,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      label.toString().split('|')[2],
                      style: Theme.of(context).primaryTextTheme.headline5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
