import 'package:flutter/material.dart';
import 'package:movie_recommendation_app/models/movie_model.dart';

class MovieDetail extends StatelessWidget {
  final MovieModel? movie;
  final String imaPath = 'https://image.tmdb.org/t/p/w500';

  const MovieDetail({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie!.posterPath != null) {
      path = imaPath + movie!.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large_previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie!.title),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: height / 1.5,
              child: Image.network(path),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                movie!.overview,
                style: Theme.of(context).textTheme.headline5,
              ),
            )
          ],
        ),
      )),
    );
  }
}
