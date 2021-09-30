import 'package:flutter/widgets.dart';
import 'package:flutter_imdb/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/constants.dart';

class TabsRouteInformationParser extends RouteInformationParser<TabsRouteState> {
  TabsRouteInformationParser(this.appRouteBloc);

  final TabsRouteBloc appRouteBloc;

  @override
  Future<TabsRouteState> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      appRouteBloc.add(const TabsRouteEvent.toMoviesList());
      return appRouteBloc.stream.first;
    }

    switch (uri.pathSegments[0]) {
      case kMovieListPath:
        appRouteBloc.add(const TabsRouteEvent.toMoviesList());
        break;

      case kMoviesGridPath:
        appRouteBloc.add(const TabsRouteEvent.toMoviesGrid());
        break;

      case kMoviesSearchPath:
        appRouteBloc.add(const TabsRouteEvent.toMoviesSearch());
        break;

      default:
        appRouteBloc.add(const TabsRouteEvent.toUnknown());
    }

    return appRouteBloc.stream.first;
  }

  @override
  RouteInformation restoreRouteInformation(TabsRouteState configuration) {
    return configuration.map(
      moviesList: (_) => const RouteInformation(location: '/'),
      moviesGrid: (_) => const RouteInformation(location: '/$kMoviesGridPath'),
      moviesSearch: (_) => const RouteInformation(location: '/$kMoviesSearchPath'),
      unknown: (_) => const RouteInformation(location: '/$kUnknownPath'),
    );
  }
}
