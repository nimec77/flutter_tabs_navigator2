import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/books/domain/entities/book.dart';
import 'package:flutter_imdb/books/presentation/blocs/book_route_bloc.dart';
import 'package:flutter_imdb/books/presentation/pages/book_details_page.dart';
import 'package:flutter_imdb/books/presentation/screens/books_list_screen.dart';
import 'package:flutter_imdb/books/presentation/screens/unknown_screen.dart';

class BookRouteBlocDelegate extends RouterDelegate<BookRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookRouteState> {
  BookRouteBlocDelegate(this.bookRouteBloc) : navigatorKey = GlobalKey<NavigatorState>() {
    bookRouteBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  final BookRouteBloc bookRouteBloc;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  var _state = const BookRouteState.home([]);

  @override
  BookRouteState get currentConfiguration => _state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRouteBloc, BookRouteState>(
      bloc: bookRouteBloc,
      builder: (context, state) {
        final books = state.maybeWhen(
          home: (books) => books,
          orElse: () => <Book>[],
        );
        return Navigator(
          key: navigatorKey,
          pages: [
            MaterialPage<void>(
              key: const ValueKey('BookListPage'),
              child: BooksListScreen(
                books: books,
                onTapped: _handleBookTapped,
              ),
            ),
            if (state is BookRouteStateUnknown)
              const MaterialPage<void>(key: ValueKey('UnknownPage'), child: UnknownScreen())
            else if (state is BookRouteStateDetails)
              BookDetailsPage(book: state.book)
          ],
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }
            bookRouteBloc.add(const BookRouteEvent.home());
            return true;
          },
        );
      },
    );
  }

  void _handleBookTapped(Book book) {
    bookRouteBloc.add(BookRouteEvent.selected(book));
  }

  @override
  Future<void> setNewRoutePath(BookRouteState configuration) async {
    _state = configuration;
  }
}
