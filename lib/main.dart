import 'package:flutter/material.dart';
import 'package:flutter_movie_guide/movie_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Guide',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MovieList(),
    );
  }
}
