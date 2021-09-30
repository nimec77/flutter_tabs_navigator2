import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/widgets/app_bottom_bar.dart';
import 'package:flutter_tabs_navigator2/movies/presentation/screens/movies_grid_screen.dart';
import 'package:flutter_tabs_navigator2/movies/presentation/screens/movies_list_screen.dart';
import 'package:flutter_tabs_navigator2/movies/presentation/screens/movies_search_screen.dart';

class TabsRouterDelegate extends RouterDelegate<TabsRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<TabsRouteState> {
  TabsRouterDelegate(this.tabsRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    _tabsRouteBlocSubscription = tabsRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  final TabsRouteBloc tabsRouteBloc;
  late final StreamSubscription _tabsRouteBlocSubscription;
  var _state = const TabsRouteState.moviesList();

  @override
  void dispose() {
    _tabsRouteBlocSubscription.cancel();
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

  @override
  Future<void> setNewRoutePath(TabsRouteState configuration) async {
    _state = configuration;
  }
}
