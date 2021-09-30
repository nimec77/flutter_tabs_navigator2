import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/blocs/app_route/app_route_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/screens/app_screen.dart';
import 'package:flutter_tabs_navigator2/app/presentation/screens/unknown_screen.dart';

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
  var _state = const AppRouteState.app();

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
            app: _appScreenPages,
            unknown: _unknownScreenPages,
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

  List<Page<void>> _appScreenPages(AppRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('MoviesScreen'),
        child: AppScreen(),
      ),
    ];
  }

  List<Page<void>> _unknownScreenPages(AppRouteState state) {
    return [
      const MaterialPage<void>(
        key: ValueKey('UnknownScreen'),
        child: UnknownScreen(),
      ),
    ];
  }

  @override
  Future<void> setNewRoutePath(AppRouteState configuration) async {
    _state = configuration;
  }
}
