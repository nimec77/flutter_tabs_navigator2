import 'package:flutter/material.dart';
import 'package:flutter_imdb/app/presentation/widgets/app_bottom_bar.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imdb'),
      ),
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}
