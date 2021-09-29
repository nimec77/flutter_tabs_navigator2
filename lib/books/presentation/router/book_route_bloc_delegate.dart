import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb/books/domain/entities/book.dart';
import 'package:flutter_imdb/books/domain/ports/repositories/book_repository.dart';
import 'package:flutter_imdb/books/presentation/pages/book_details_page.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_state.dart';
import 'package:flutter_imdb/books/presentation/screens/books_list_screen.dart';
import 'package:flutter_imdb/books/presentation/screens/unknown_screen.dart';

class BookRouteBlocDelegate extends RouterDelegate<BookRouteState>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookRouteState> {
  BookRouteBlocDelegate(this.bookRepository) : navigatorKey = GlobalKey<NavigatorState>();

  final BookRepository bookRepository;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  var _state = const BookRouteState.home();
  Book _selectedBook = NullBook();

  @override
  BookRouteState get currentConfiguration => _state;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Book>>(
      future: bookRepository.getAllBooks(),
      builder: (context, snapshot) {
        return Navigator(
          key: navigatorKey,
          pages: [
            MaterialPage<void>(
              key: const ValueKey('BookListPage'),
              child: BooksListScreen(
                books: snapshot.connectionState == ConnectionState.done ? snapshot.data ?? [] : [],
                onTapped: _handleBookTapped,
              ),
            ),
            if (_state is BookRouteStateUnknown)
              const MaterialPage<void>(
                key: ValueKey('UnknownPage'),
                child: UnknownScreen(),
              )
            else if (_state is BookRouteStateDetails)
              BookDetailsPage(book: _selectedBook)
          ],
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }

            _state = const BookRouteState.home();
            notifyListeners();

            return true;
          },
        );
      },
    );
  }

  void _handleBookTapped(Book book) {
    _selectedBook = book;
    _state = BookRouteState.details(book.isbn);
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(BookRouteState configuration) async {
    if (configuration is BookRouteStateDetails) {
      _selectedBook = await bookRepository.getBookByIsbn(configuration.isbn);
      if (_selectedBook is NullBook) {
        _state = const BookRouteState.unknown();
      }
    }
    _state = configuration;
  }
}
