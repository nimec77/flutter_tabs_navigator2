import 'package:flutter/material.dart';
import 'package:flutter_imdb/books/data/providers/book_provider.dart';
import 'package:flutter_imdb/books/data/repositories/book_repository_imp.dart';
import 'package:flutter_imdb/books/domain/ports/repositories/book_repository.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_information_parser.dart';
import 'package:flutter_imdb/books/presentation/router/book_router_delegate.dart';

void main() {
  runApp(ImdbApp(
    bookRepository: BookRepositoryImp(BookProvider()),
  ));
}

class ImdbApp extends StatelessWidget {
  ImdbApp({Key? key, required this.bookRepository})
      : _routerDelegate = BookRouterDelegate(bookRepository),
        _routeInformationParser = BookRouteInformationParser(),
        super(key: key);

  final BookRepository bookRepository;
  final BookRouterDelegate _routerDelegate;
  final BookRouteInformationParser _routeInformationParser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Imdb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
