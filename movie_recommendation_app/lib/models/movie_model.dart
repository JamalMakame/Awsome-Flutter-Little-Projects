import 'dart:convert';

class MovieModel {
  int id;
  String title;
  String voteAverage;
  String releaseDate;
  String overview;
  String posterPath;
  MovieModel({
    required this.id,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
    required this.overview,
    required this.posterPath,
  });

 

  factory MovieModel.fromJson(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'],
      title: map['title'],
      voteAverage: map['vote_average'].toString(),
      releaseDate: map['release_date'],
      overview: map['overview'],
      posterPath: map['poster_path'],
    );
  }

}
