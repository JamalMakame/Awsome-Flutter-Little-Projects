// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_recommendation_app/models/movie_model.dart';
import 'package:movie_recommendation_app/movie_detail.dart';
import 'package:movie_recommendation_app/services/http_helper.dart';

class Movie_List extends StatefulWidget {
  const Movie_List({Key? key}) : super(key: key);

  @override
  State<Movie_List> createState() => _Movie_ListState();
}

class _Movie_ListState extends State<Movie_List> {
  Icon visibleIcon = const Icon(Icons.search);
  Widget searchBar = const Text('Movies');

  final String iconBase = 'https://image.tmdb.org/t/p/w500';
  final String defaultImage =
      'https://images.freeimages.com/images/large_previews/5eb/movie-clapboard-118433.jpg';

  List? movies;
  HttpHelper helper = GetIt.I<HttpHelper>();
  int moviesCount = 0;

  @override
  void initState() {
    initialize();
    super.initState();
  }

  Future initialize() async {
    movies = await helper.getUpcoming();
    setState(() {
      movies = movies;
      moviesCount = movies!.length;
    });
  }

  Future search(text) async {
    movies = await helper.findMovies(text);
    setState(() {
      movies = movies;
      moviesCount = movies!.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    NetworkImage image;
    return Scaffold(
      appBar: AppBar(
        title: searchBar,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (visibleIcon.icon == Icons.search) {
                  visibleIcon = const Icon(Icons.cancel);
                  searchBar = TextField(
                    onSubmitted: (String text) {
                      search(text);
                    },
                    textInputAction: TextInputAction.search,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  );
                } else {
                  setState(() {
                    visibleIcon = const Icon(Icons.search);
                    searchBar = const Text('Movies');
                  });
                }
              });
            },
            icon: visibleIcon,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: moviesCount,
          itemBuilder: ((context, index) {
            if (movies![index].posterPath != null) {
              image = NetworkImage(iconBase + movies![index].posterPath);
            } else {
              image = NetworkImage(defaultImage);
            }
            return Card(
              color: Colors.white,
              elevation: 4.0,
              child: ListTile(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MovieDetail(
                      movie: movies![index],
                    );
                  }));
                }),
                leading: CircleAvatar(
                  backgroundImage: image,
                ),
                title: Text(
                  movies![index].title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: Text(
                  'Released: ${movies![index].releaseDate} - Vote: ${movies![index].voteAverage.toString()}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            );
          })),
    );
  }
}
