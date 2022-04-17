import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_recommendation_app/models/movie_model.dart';

class HttpHelper {
  Uri movieUri = Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=014a339a747f65d15437b184d8974306');

  Future<List> getUpcoming() async {
    final result = await http.get(movieUri);
    if (result.statusCode == 200) {
      final jsonResponse = jsonDecode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => MovieModel.fromJson(i)).toList();
      return movies;
    } else {
      throw Exception(
          'Error connecting with API with statusCode ${result.statusCode}');
    }
  }

  Uri urlSearchBase = Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=014a339a747f65d15437b184d8974306&query=');

  Future<List> findMovies(String title) async {
    Uri query = Uri.parse('$urlSearchBase$title');
    http.Response result = await http.get(query);
    if (result.statusCode == 200) {
      final jsonResponse = jsonDecode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => MovieModel.fromJson(i)).toList();
      return movies;
    } else {
      throw Exception(
          'Error connecting with API with statusCode ${result.statusCode}');
    }
  }
}
