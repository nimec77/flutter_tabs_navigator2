import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_imdb/app/presentation/app_bloc_observer.dart';
import 'package:flutter_imdb/books/data/providers/book_provider.dart';
import 'package:flutter_imdb/books/data/repositories/book_repository_imp.dart';
import 'package:flutter_imdb/books/domain/ports/repositories/book_repository.dart';
import 'package:flutter_imdb/books/presentation/blocs/book_route_bloc.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_bloc_delegate.dart';
import 'package:flutter_imdb/books/presentation/router/book_route_bloc_information_parser.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  runZonedGuarded(
    () => runApp(ImdbApp(bookRepository: BookRepositoryImp(BookProvider()))),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class ImdbApp extends StatefulWidget {
  const ImdbApp({Key? key, required this.bookRepository}) : super(key: key);

  final BookRepository bookRepository;

  @override
  State<ImdbApp> createState() => _ImdbAppState();
}

class _ImdbAppState extends State<ImdbApp> {
  late final BookRouteBloc _bookRouteBloc;
  late final BookRouteBlocDelegate _routeBlocDelegate;
  late final BookRouteBlocInformationParser _routeBlocInformationParser;

  @override
  void initState() {
    _bookRouteBloc = BookRouteBloc(widget.bookRepository);
    _routeBlocDelegate = BookRouteBlocDelegate(_bookRouteBloc);
    _routeBlocInformationParser = BookRouteBlocInformationParser(_bookRouteBloc);
    _bookRouteBloc.add(const BookRouteEvent.home());
    super.initState();
  }

  @override
  void dispose() {
    _bookRouteBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Imdb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _routeBlocDelegate,
      routeInformationParser: _routeBlocInformationParser,
    );
  }
}
