import 'package:flutter/cupertino.dart';
import 'package:flutter_tabs_navigator2/books/presentation/router/book_route_path.dart';

class BookRouteInformationParser extends RouteInformationParser<BookRoutePath> {
  @override
  Future<BookRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return BookRoutePath.home();
    }

    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'book') {
        return BookRoutePath.unknown();
      }
      final isbn = uri.pathSegments[1];

      return BookRoutePath.details(isbn);
    }

    return BookRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(BookRoutePath configuration) {
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/');
    }

    if (configuration.isDetailsPage) {
      return RouteInformation(location: '/book/${configuration.isbn}');
    }

    return const RouteInformation(location: '/404');
  }
}