import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/retry.dart';
import '../models/models.dart';
import 'package:http/http.dart' as http;

// Mock recipe service that grabs sample json data to mock recipe request/response
class MockFooderlichService {
  // Batch request that gets both today recipes and friend's feed
  Future<ExploreData> getExploreData() async {
    await _getRecipes();
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayRecipes, friendPosts);
  }

  // Get the sample recipe json to display in ui
  Future<List<SimpleRecipe>> getRecipes() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to SimpleRecipe object.
    if (json['recipes'] != null) {
      final recipes = <SimpleRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(SimpleRecipe.fromJson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  // Get sample explore recipes json to display in ui
  Future<List<ExploreRecipe>> _getTodayRecipes() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to ExploreRecipe object.
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(ExploreRecipe.fromJson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  Future _getRecipes() async {
    final client = RetryClient(http.Client());
    final url =
        Uri.parse('https://mycookbook-io1.p.rapidapi.com/recipes/rapidapi');
    try {
      var response = await client.post(
        url,
        headers: {
          'content-type': 'text/plain',
          'X-RapidAPI-Key':
              'a8d822bfcemsh7456c60fe2ad27fp1b30b1jsn571b65d84442',
          'X-RapidAPI-Host': 'mycookbook-io1.p.rapidapi.com',
        },
        body:
            'https://www.jamieoliver.com/recipes/Smoked-Salmon/',
      );
      final recipes = <ExploreRecipe0>[];
      //recipes.add(response.body);
      debugPrint(response.body);
      //final List<dynamic> decodedJsonArray = jsonDecode(response.body);
      //debugPrint(decodedJsonArray.toString());
      // final json = decodedJson.map((e) => decodedJson);
      // for (i = 0; i = ) {
      //   List ingredients = [];
      //   List instructions = [];

      //   if (value['ingredients'] != null) {
      //     value['ingredients'].forEach((v) {
      //       ingredients.add(v);
      //     });
      //   }

      //   if (value['instructions']['steps'] != null) {
      //     value['instructions']['steps'].forEach((v) {
      //       instructions.add(v);
      //     });
      //   }
      //   recipes.add(ExploreRecipe0(
      //     description: value['description'] ?? '',
      //     images: value['images'] ?? '',
      //     ingredients: ingredients,
      //     instructions: instructions,
      //     name: value['name'] ?? '',
      //     uuid: value['uuid'] ?? '',
      //   ));
      // });

      // if (json != null) {
      //   final recipes = <ExploreRecipe0>[];
      //   json.forEach((key, value) {
      //     recipes.add(ExploreRecipe0.fromJson(json));
      //   });
      //   return recipes;
      // } else {
      //   return [];
      // }
    } catch (e) {
      debugPrint('There is problem: $e');
    }
  }

  // Get the sample friend json posts to display in ui
  Future<List<Post>> _getFriendFeed() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each post and convert json to Post object.
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((v) {
        posts.add(Post.fromJson(v));
      });
      return posts;
    } else {
      return [];
    }
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
