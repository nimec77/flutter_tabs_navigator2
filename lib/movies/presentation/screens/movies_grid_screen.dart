import 'package:flutter/material.dart';

class MoviesGridScreen extends StatelessWidget {
  const MoviesGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies Grid Screen', style: Theme.of(context).textTheme.headline1),
    );
  }
}
