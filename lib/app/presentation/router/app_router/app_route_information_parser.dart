import 'package:flutter/widgets.dart';
import 'package:flutter_tabs_navigator2/app/presentation/blocs/app_route/app_route_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/router/constants.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRouteState> {
  AppRouteInformationParser(this.appRouteBloc);

  final AppRouteBloc appRouteBloc;

  @override
  Future<AppRouteState> parseRouteInformation(RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      appRouteBloc.add(const AppRouteEvent.toApp());
      return appRouteBloc.stream.first;
    }

    if (uri.pathSegments[0] == '/') {
      appRouteBloc.add(const AppRouteEvent.toApp());
    } else {
      appRouteBloc.add(const AppRouteEvent.toUnknown());
    }

    return appRouteBloc.stream.first;
  }

  @override
  RouteInformation? restoreRouteInformation(AppRouteState configuration) {
    return configuration.map(
      app: (stateApp) => const RouteInformation(location: '/'),
      unknown: (_) => const RouteInformation(location: '/$kUnknownPath'),
    );
  }
}
