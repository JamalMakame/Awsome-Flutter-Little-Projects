import 'dart:convert';

class PostCardModel {
  String image;
  String name;
  String recipeUrl;
  PostCardModel({
    required this.image,
    required this.name,
    required this.recipeUrl,
  });

  factory PostCardModel.fromMap(Map<String, dynamic> map) {
    return PostCardModel(
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      recipeUrl: map['recipeUrl'] ?? '',
    );
  }

  factory PostCardModel.fromJson(String source) =>
      PostCardModel.fromMap(json.decode(source));
}
