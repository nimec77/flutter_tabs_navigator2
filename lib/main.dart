import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/app_bloc_observer.dart';
import 'package:flutter_imdb/app/presentation/blocs/app_route/app_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/app_router/app_route_information_parser.dart';
import 'package:flutter_imdb/app/presentation/router/app_router/app_router_delegate.dart';

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

class ImdbApp extends StatefulWidget {
  const ImdbApp({Key? key}) : super(key: key);

  @override
  State<ImdbApp> createState() => _ImdbAppState();
}

class _ImdbAppState extends State<ImdbApp> {
  late final AppRouteBloc _appRouteBloc;
  late final AppRouterDelegate _appRouterDelegate;
  late final AppRouteInformationParser _appRouteInformationParser;

  @override
  void initState() {
    _appRouteBloc = AppRouteBloc();
    _appRouterDelegate = AppRouterDelegate(_appRouteBloc);
    _appRouteInformationParser = AppRouteInformationParser(_appRouteBloc);
    _appRouteBloc.add(const AppRouteEvent.toApp());
    super.initState();
  }

  @override
  void dispose() {
    _appRouteBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Imdb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouterDelegate,
      routeInformationParser: _appRouteInformationParser,
    );
  }
}
