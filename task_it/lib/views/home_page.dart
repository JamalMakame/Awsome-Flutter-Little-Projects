import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task_it/const/app_colors.dart';
import 'package:task_it/views/widgets/card_widget.dart';
import 'package:task_it/views/widgets/indicator_widget.dart';
import 'package:task_it/views/widgets/list_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List showData = [];
  final _pageController = PageController(viewportFraction: 0.88);

  @override
  void initState() {
    super.initState();
    _readData();
  }

  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/project_card.json')
        .then((value) {
      setState(() {
        showData = jsonDecode(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    GestureDetector customFloatingButton({
      required String buttonText,
      required Color buttonClr,
    }) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 70,
          width: 156,
          decoration: BoxDecoration(
            color: buttonClr,
            borderRadius: const BorderRadius.all(
              Radius.circular(75),
            ),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: TodoColors.iconClr,
              size: 37,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: TodoColors.iconClr,
                size: 37,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Jamal',
              style: Theme.of(context).primaryTextTheme.headline1,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Have a nice day',
              style: Theme.of(context).primaryTextTheme.headline2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customFloatingButton(
                    buttonClr: TodoColors.lightTextClr,
                    buttonText: 'My Tasks',
                  ),
                  customFloatingButton(
                    buttonClr: Colors.deepPurple.shade300,
                    buttonText: 'In-Progress',
                  ),
                  customFloatingButton(
                    buttonClr: Colors.deepPurple.shade300,
                    buttonText: 'Completed',
                  ),
                ],
              ),
            ),
            Container(
              height: 240,
              child: PageView.builder(
                controller: _pageController,
                itemCount: showData.length,
                itemBuilder: (context, index) {
                  return customCards(
                    projectNumber: (index + 1).toString(),
                    projectTitle: showData[index]['title'],
                    projectDate: showData[index]['date'],
                  );
                },
              ),
            ),

            indicator(
              count: showData.length,
              pageController: _pageController,
            ),

            // TODO 3: Add ListView Builder for Progress of the Tasks
            Padding(
              padding: const EdgeInsets.only(
                top: 48,
              ),
              child: Text(
                'Progress',
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: SingleChildScrollView(
                child: customTile(),
              )
            ),
          ],
        ),
      ),
    );
  }
}
