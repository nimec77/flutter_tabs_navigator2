import 'package:flutter/material.dart';
import 'package:flutter_imdb/app/presentation/widgets/bottom_bar/app_bottom_bar.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

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
