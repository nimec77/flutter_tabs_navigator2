
import 'package:flutter/widgets.dart';
import 'package:flutter_imdb/books/presentation/blocs/book_route_bloc.dart';

class BookRouteBlocInformationParser extends RouteInformationParser<BookRouteState> {
  BookRouteBlocInformationParser(this.bookRouteBloc);

  final BookRouteBloc bookRouteBloc;

  @override
  Future<BookRouteState> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      bookRouteBloc.add(const BookRouteEvent.home());
      return bookRouteBloc.stream.first;
    }

    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'book') {
        bookRouteBloc.add(const BookRouteEvent.unknown());
        return bookRouteBloc.stream.first;
      }
      final isbn = uri.pathSegments[1];
      bookRouteBloc.add(BookRouteEvent.selectedIsbn(isbn));

      return bookRouteBloc.stream.first;
    }

    bookRouteBloc.add(const BookRouteEvent.unknown());

    return bookRouteBloc.stream.first;
  }
}