import 'dart:convert';

class IngredientModel {
  String author;
  String postDate;
  String description;
  List<IngredientLists> ingredient;
  List<Preparations> preparation;
  IngredientModel({
    required this.author,
    required this.postDate,
    required this.description,
    required this.ingredient,
    required this.preparation,
  });
}

class IngredientLists {
  String quantity;
  String ingredient;
  IngredientLists({
    required this.quantity,
    required this.ingredient,
  });
}

class Preparations {
  String step;
  String description;
  Preparations({
    required this.step,
    required this.description,
  });
}
