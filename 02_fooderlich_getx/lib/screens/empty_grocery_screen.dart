import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:get/get.dart';

class EmptyGroceryScreen extends GetView<AppStateManager> {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                controller.goToRecipes();
              },
              splashColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text(
                'Browse Recipes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
