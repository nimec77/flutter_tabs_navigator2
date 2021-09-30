import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/app_bloc_observer.dart';
import 'package:flutter_imdb/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/screens/app_screen.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  runZonedGuarded(
    () => runApp(const ImdbApp()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class ImdbApp extends StatelessWidget {
  const ImdbApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imdb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<TabsRouteBloc>(
        create: (context) => TabsRouteBloc(),
        child: const AppScreen(),
      ),
    );
  }

}
