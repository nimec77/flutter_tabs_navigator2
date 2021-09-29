import 'package:flutter/material.dart';
import 'package:flutter_imdb/books/data/providers/book_provider.dart';
import 'package:flutter_imdb/books/data/repositories/book_repository_imp.dart';
import 'package:flutter_imdb/books/domain/ports/repositories/book_repository.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_bloc_delegate.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_bloc_information_parser.dart';

void main() {
  runApp(ImdbApp(
    bookRepository: BookRepositoryImp(BookProvider()),
  ));
}

class ImdbApp extends StatelessWidget {
  ImdbApp({Key? key, required this.bookRepository})
      : _routerDelegate = BookRouteBlocDelegate(bookRepository),
        _routeInformationParser = BookRouteBlocInformationParser(),
        super(key: key);

  final BookRepository bookRepository;
  final BookRouteBlocDelegate _routerDelegate;
  final BookRouteBlocInformationParser _routeInformationParser;

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
