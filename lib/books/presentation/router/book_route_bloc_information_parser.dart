
import 'package:flutter/widgets.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_state.dart';

class BookRouteBlocInformationParser extends RouteInformationParser<BookRouteState> {
  @override
  Future<BookRouteState> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return const BookRouteState.home();
    }

    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'book') {
        return const BookRouteState.unknown();
      }
      final isbn = uri.pathSegments[1];

      return BookRouteState.details(isbn);
    }

    return const BookRouteState.unknown();
  }
}