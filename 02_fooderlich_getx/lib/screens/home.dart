import 'package:flutter/material.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/profile_screen.dart';
import 'package:get/get.dart';

import 'explore_screen.dart';
import 'grocery_screen.dart';
import 'recipes_screen.dart';

class Home extends GetView<AppStateManager> {
  // TODO: Home MaterialPage Helper

  const Home({
    Key? key,
  }) : super(key: key);

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(AppStateManager());
    // TODO: Wrap Consumer for AppStateManager
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text(
              'Fooderlich',
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              profileButton(),
            ],
          ),
          body: IndexedStack(index: controller.getSelectedTab, children: pages),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            currentIndex: controller.getSelectedTab,
            onTap: (index) {
              controller.goToTab(index);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: 'Explore'),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Recipes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'To Buy',
              ),
            ],
          ),
        ));
    // TODO: Add closing },);
  }

  Widget profileButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        child: const CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            'assets/profile_pics/person_stef.jpeg',
          ),
        ),
        onTap: () {
          Get.to(
            () => const ProfileScreen(),
          );
        },
      ),
    );
  }
}
