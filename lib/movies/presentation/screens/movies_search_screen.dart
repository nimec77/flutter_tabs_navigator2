import 'package:flutter/material.dart';

class MoviesSearchScreen extends StatelessWidget {
  const MoviesSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies Search Screen', style: Theme.of(context).textTheme.headline1),
    );
  }
}
