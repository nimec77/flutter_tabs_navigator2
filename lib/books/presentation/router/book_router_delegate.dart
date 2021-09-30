import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tabs_navigator2/books/domain/entities/book.dart';
import 'package:flutter_tabs_navigator2/books/domain/ports/repositories/book_repository.dart';
import 'package:flutter_tabs_navigator2/books/presentation/pages/book_details_page.dart';
import 'package:flutter_tabs_navigator2/books/presentation/router/book_route_path.dart';
import 'package:flutter_tabs_navigator2/books/presentation/screens/books_list_screen.dart';
import 'package:flutter_tabs_navigator2/books/presentation/screens/unknown_screen.dart';

class BookRouterDelegate extends RouterDelegate<BookRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookRoutePath> {
  BookRouterDelegate(this.bookRepository) : navigatorKey = GlobalKey<NavigatorState>();

  final BookRepository bookRepository;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  Book _selectedBook = NullBook();
  bool shown404 = false;

  @override
  BookRoutePath get currentConfiguration {
    if (shown404) {
      return BookRoutePath.unknown();
    }

    return _selectedBook is NullBook ? BookRoutePath.home() : BookRoutePath.details(_selectedBook.isbn);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Book>>(
      future: bookRepository.getAllBooks(),
      builder: (context, snapshot) {
        return Navigator(
          key: navigatorKey,
          pages: [
            MaterialPage<void>(
              key: const ValueKey('BooksListPage'),
              child: BooksListScreen(
                books: snapshot.connectionState == ConnectionState.done ? snapshot.data ?? [] : [],
                onTapped: _handleBookTapped,
              ),
            ),
            if (shown404)
              const MaterialPage<void>(
                key: ValueKey('UnknownPage'),
                child: UnknownScreen(),
              )
            else if (_selectedBook is! NullBook)
              // MaterialPage<void>(
              //   key: ValueKey(_selectedBook),
              //   child: BookDetailsScreen(book: _selectedBook),
              // )
              BookDetailsPage(book: _selectedBook)
          ],
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }

            _selectedBook = NullBook();
            shown404 = false;
            notifyListeners();

            return true;
          },
        );
      },
    );
  }

  void _handleBookTapped(Book book) {
    _selectedBook = book;
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(BookRoutePath configuration) async {
    if (configuration.isUnknown) {
      _selectedBook = NullBook();
      shown404 = true;
      return;
    }

    if (configuration.isDetailsPage) {
      if (!(await bookRepository.hasBook(configuration.isbn))) {
        shown404 = true;
        return;
      }

      _selectedBook = await bookRepository.getBookByIsbn(configuration.isbn);
    } else {
      _selectedBook = NullBook();
    }

    shown404 = false;
  }
}
