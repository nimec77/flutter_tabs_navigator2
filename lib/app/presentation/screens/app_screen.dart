import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/tabs_roter/tabs_router_delegate.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  late final TabsRouteBloc _tabsRouteBloc;
  late final TabsRouterDelegate _tabsRouterDelegate;

  @override
  void initState() {
    _tabsRouteBloc = TabsRouteBloc();
    _tabsRouterDelegate = TabsRouterDelegate(_tabsRouteBloc);
    _tabsRouteBloc.add(const TabsRouteEvent.toMoviesList());
    super.initState();
  }

  @override
  void dispose() {
    _tabsRouteBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TabsRouteBloc>.value(
      value: _tabsRouteBloc,
      child: Router(
        routerDelegate: _tabsRouterDelegate,
      ),
    );
  }
}
