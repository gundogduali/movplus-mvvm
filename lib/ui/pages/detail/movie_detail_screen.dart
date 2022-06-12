import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key, required this.movieId}) : super(key: key);
  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MovieDetail $movieId',
            style: const TextStyle(fontSize: 32, color: Colors.white)),
      ),
    );
  }
}
