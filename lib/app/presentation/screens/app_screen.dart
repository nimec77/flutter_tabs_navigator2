import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/tabs_roter/tabs_route_information_parser.dart';
import 'package:flutter_imdb/app/presentation/router/tabs_roter/tabs_router_delegate.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  late final TabsRouterDelegate _tabsRouterDelegate;
  late final TabsRouteInformationParser _tabsRouteInformationParser;

  @override
  void initState() {
    final tabsRouteBloc = context.read<TabsRouteBloc>();
    _tabsRouterDelegate = TabsRouterDelegate(tabsRouteBloc);
    _tabsRouteInformationParser = TabsRouteInformationParser(tabsRouteBloc);
    tabsRouteBloc.add(const TabsRouteEvent.toMoviesList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: _tabsRouterDelegate,
      routeInformationParser: _tabsRouteInformationParser,
    );
  }
}
