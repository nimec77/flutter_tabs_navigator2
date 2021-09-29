import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/blocs/app_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/screens/app_screen.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouteState> {
  AppRouterDelegate(this.appRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    _appRouteBlocSubscription = appRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  final AppRouteBloc appRouteBloc;
  late final StreamSubscription _appRouteBlocSubscription;
  var _state = const AppRouteState.moviesList();

  @override
  void dispose() {
    _appRouteBlocSubscription.cancel();
    super.dispose();
  }

  @override
  GlobalKey<NavigatorState> navigatorKey;

  @override
  AppRouteState get currentConfiguration => _state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppRouteBloc, AppRouteState>(
      bloc: appRouteBloc,
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: const [
            MaterialPage<void>(
              key: ValueKey('AppScreen'),
              child: AppScreen(),
            ),
          ],
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRouteState configuration) async {
    _state = configuration;
  }
}
