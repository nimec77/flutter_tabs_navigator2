import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/screens/unknown_screen.dart';
import 'package:flutter_imdb/app/presentation/widgets/app_bottom_bar.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_grid_screen.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_list_screen.dart';
import 'package:flutter_imdb/movies/presentation/screens/movies_search_screen.dart';

class TabsRouterDelegate extends RouterDelegate<TabsRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<TabsRouteState> {
  TabsRouterDelegate(this.tabsRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    _appRouteBlocSubscription = tabsRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  final TabsRouteBloc tabsRouteBloc;
  late final StreamSubscription _appRouteBlocSubscription;
  var _state = const TabsRouteState.moviesList();

  @override
  void dispose() {
    _appRouteBlocSubscription.cancel();
    super.dispose();
  }

  @override
  GlobalKey<NavigatorState> navigatorKey;

  @override
  TabsRouteState get currentConfiguration => _state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imdb'),
      ),
      body: BlocBuilder<TabsRouteBloc, TabsRouteState>(
        builder: (context, state) {
          return Navigator(
            key: navigatorKey,
            pages: state.map(
              moviesList: _moviesListPages,
              moviesGrid: _moviesGridPages,
              moviesSearch: _moviesSearchPages,
              unknown: _unknownPages,
            ),
            onPopPage: (route, dynamic result) {
              if (!route.didPop(result)) {
                return false;
              }
              return true;
            },
          );
        },
      ),
      bottomNavigationBar: const AppBottomBar(),
    );
  }

  List<Page<void>> _moviesListPages(TabsRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('MoviesListScreen'),
        child: MoviesListScreen(),
      ),
    ];
  }

  List<Page<void>> _moviesGridPages(TabsRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('MoviesGridScreen'),
        child: MoviesGridScreen(),
      ),
    ];
  }

  List<Page<void>> _moviesSearchPages(TabsRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('MoviesSearchScreen'),
        child: MoviesSearchScreen(),
      ),
    ];
  }

  List<Page<void>> _unknownPages(TabsRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('UnknownScreen'),
        child: UnknownScreen(),
      ),
    ];
  }

  @override
  Future<void> setNewRoutePath(TabsRouteState configuration) async {
    _state = configuration;
  }
}