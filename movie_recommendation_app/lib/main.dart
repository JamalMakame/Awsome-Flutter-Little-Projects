import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_recommendation_app/movieList.dart';
import 'package:movie_recommendation_app/services/http_helper.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => HttpHelper());
}

void main() {
  setupLocator();
  runApp(const MyMovies());
}

class MyMovies extends StatelessWidget {
  const MyMovies({Key? key}) : super(key: key);

  Widget home() {
    return const Movie_List();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: home(),
    );
  }
}
