import 'package:flutter/widgets.dart';
import 'package:flutter_tabs_navigator2/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/router/constants.dart';

class TabsRouteInformationParser extends RouteInformationParser<TabsRouteState> {
  TabsRouteInformationParser(this.tabsRouteBloc);

  final TabsRouteBloc tabsRouteBloc;

  @override
  Future<TabsRouteState> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      tabsRouteBloc.add(const TabsRouteEvent.toMoviesList());
      return tabsRouteBloc.stream.first;
    }

    switch (uri.pathSegments[0]) {
      case kMoviesGridPath:
        tabsRouteBloc.add(const TabsRouteEvent.toMoviesGrid());
        break;

      case kMoviesSearchPath:
        tabsRouteBloc.add(const TabsRouteEvent.toMoviesSearch());
        break;

      default:
        tabsRouteBloc.add(const TabsRouteEvent.toMoviesList());
    }

    return tabsRouteBloc.stream.first;
  }

  @override
  RouteInformation restoreRouteInformation(TabsRouteState configuration) {
    final routeInformation = configuration.map(
      moviesList: (_) => const RouteInformation(location: '/$kMovieListPath'),
      moviesGrid: (_) => const RouteInformation(location: '/$kMoviesGridPath'),
      moviesSearch: (_) => const RouteInformation(location: '/$kMoviesSearchPath'),
    );

    return routeInformation;
  }
}
