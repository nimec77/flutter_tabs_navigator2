import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/blocs/app_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/screens/unknown_screen.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_grid_screen.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_list_screen.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_search_screen.dart';

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
          pages: state.map(
            moviesList: (_) => [
              const MaterialPage<void>(
                key: ValueKey('MoviesListScreen'),
                child: MoviesListScreen(),
              ),
            ],
            moviesGrid: (_) => [
              const MaterialPage<void>(
                key: ValueKey('MoviesGridScreen'),
                child: MoviesGridScreen(),
              ),
            ],
            moviesSearch: (_) => [
              const MaterialPage<void>(
                key: ValueKey('MoviesSearchScreen'),
                child: MoviesSearchScreen(),
              ),
            ],
            unknown:  (_) => [
              const MaterialPage<void>(
                key: ValueKey('UnknownScreen'),
                child: UnknownScreen(),
              ),
            ],
          ),
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
