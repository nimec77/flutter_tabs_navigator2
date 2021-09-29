import 'package:flutter/material.dart';

class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies List Screen', style: Theme.of(context).textTheme.headline1),
    );
  }
}
