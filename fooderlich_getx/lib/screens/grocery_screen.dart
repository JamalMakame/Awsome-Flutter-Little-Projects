import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';
import 'package:fooderlich/screens/grocery_list_screen.dart';
import 'package:get/get.dart';

class GroceryScreen extends GetView<GroceryManager> {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GroceryManager());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(
            GroceryItemScreen(
              onCreate: (item) {
                controller.addItem(item);
                Get.back();
              },
              onUpdate: (item) {},
              isUpdating: false,
            ),
          );
        },
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    if (controller.groceryItems.isNotEmpty) {
      return GroceryListScreen(manager: controller);
    } else {
      return const EmptyGroceryScreen();
    }
  }
}
