import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unknown Screen'),
      ),
      body: Center(
        child: Text(
          '404!',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.red,
              ),
        ),
      ),
    );
  }
}
