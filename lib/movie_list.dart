import 'package:flutter/material.dart';
import 'package:flutter_movie_guide/models/movie.dart';
import 'package:flutter_movie_guide/utils/mock_data.dart';

class MovieList extends StatelessWidget {
  static List<Movie> allMovies;

  @override
  Widget build(BuildContext context) {
    allMovies = prepareDataSource();

    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Guide"),
      ),
      body: prepareList(),
    );
  }

  List<Movie> prepareDataSource() {
    List<Movie> movies = [];

    for (int i = 0; i < 12; i++) {
      String smallPic = MockData.MOVIE_NAMES[i].toLowerCase() + "${i + 1}.jpg";
      String bigPic =
          MockData.MOVIE_NAMES[i].toLowerCase() + "_big" + "${i + 1}.jpg";

      Movie addMovie = Movie(MockData.MOVIE_NAMES[i], MockData.MOVIE_YEARS[i],
          MockData.MOVIE_DETAILS[i], smallPic, bigPic);
      movies.add(addMovie);
    }
    return movies;
  }

  Widget prepareList() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return oneLineMovie(context, index);
      },
      itemCount: allMovies.length,
    );
  }

  Widget oneLineMovie(BuildContext context, int index) {
    Movie currentMovie = allMovies[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          //onTap: () => Navigator.pushNamed(context, "/movieDetail/$index"),
          leading: Image.asset(
            "images/" + currentMovie.movieSmallPic,
            width: 64,
            height: 64,
          ),
          title: Text(
            currentMovie.movieName,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.pink.shade500),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              currentMovie.movieDate,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black38),
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
        ),
      ),
    );
  }
}
