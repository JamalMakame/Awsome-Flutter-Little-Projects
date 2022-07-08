import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/components.dart';
import '../models/models.dart';
import 'more_info.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipesGridView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final simpleRecipe = recipes[index];
          return GestureDetector(
            onTap: () {
              Get.to(
                () => const MoreInfoScreen(),
                arguments: {
                  'DishImage' : simpleRecipe.dishImage,
                  'Title' : simpleRecipe.title,
                  'Course': simpleRecipe.information[0],
                  'Price': simpleRecipe.information[1],
                  'Cuisine': simpleRecipe.information[2],
                  'Skill Level': simpleRecipe.information[3],
                  'Prep Time': simpleRecipe.information[4],
                  'Source' : simpleRecipe.source,
                },
              );
            },
            child: RecipeThumbnail(recipe: simpleRecipe),
          );
        },
      ),
    );
  }
}
