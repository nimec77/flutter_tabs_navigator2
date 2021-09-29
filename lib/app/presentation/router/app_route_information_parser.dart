import 'package:flutter/widgets.dart';
import 'package:flutter_imdb/app/presentation/blocs/app_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/constants.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRouteState> {
  AppRouteInformationParser(this.appRouteBloc);

  final AppRouteBloc appRouteBloc;

  @override
  Future<AppRouteState> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      appRouteBloc.add(const AppRouteEventToMoviesList());
      return appRouteBloc.stream.first;
    }

    switch (uri.pathSegments[0]) {
      case kMovieListPath:
        appRouteBloc.add(const AppRouteEvent.toMoviesList());
        break;

      case kMoviesGridPath:
        appRouteBloc.add(const AppRouteEvent.toMoviesGrid());
        break;

      case kMoviesSearchPath:
        appRouteBloc.add(const AppRouteEvent.toMoviesSearch());
        break;

      default:
        appRouteBloc.add(const AppRouteEvent.toUnknown());
    }

    return appRouteBloc.stream.first;
  }

  @override
  RouteInformation restoreRouteInformation(AppRouteState configuration) {
    return configuration.when(
      moviesList: () => const RouteInformation(location: '/'),
      moviesGrid: () => const RouteInformation(location: kMoviesGridPath),
      moviesSearch: () => const RouteInformation(location: kMoviesSearchPath),
      unknown: () => const RouteInformation(location: kUnknownPath),
    );
  }
}
