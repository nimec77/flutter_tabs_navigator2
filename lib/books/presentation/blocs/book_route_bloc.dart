import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_tabs_navigator2/books/domain/entities/book.dart';
import 'package:flutter_tabs_navigator2/books/domain/ports/repositories/book_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'book_route_event.dart';

part 'book_route_state.dart';

part 'book_route_bloc.freezed.dart';

class BookRouteBloc extends Bloc<BookRouteEvent, BookRouteState> {
  BookRouteBloc(this.bookRepository) : super(const BookRouteState.home([]));

  final BookRepository bookRepository;

  @override
  Stream<BookRouteState> mapEventToState(
    BookRouteEvent event,
  ) async* {
    yield* event.map(
      home: _mapHomeToState,
      unknown: _mapUnknownToState,
      selected: _mapSelectedToState,
      selectedIsbn: _mapSelectedIsbnToState,
    );
  }

  Stream<BookRouteState> _mapHomeToState(BookRouteEventHome event) async* {
    final books = await bookRepository.getAllBooks();
    yield BookRouteState.home(books);
  }

  Stream<BookRouteState> _mapUnknownToState(BookRouteEventUnknown event) async* {
    yield const BookRouteState.unknown();
  }

  Stream<BookRouteState> _mapSelectedToState(BookRouteEventSelected event) async* {
    yield BookRouteState.details(event.book);
  }

  Stream<BookRouteState> _mapSelectedIsbnToState(BookRouteEventSelectIsbn event) async* {
    final book = await bookRepository.getBookByIsbn(event.isbn);
    if (book is NullBook) {
      yield const BookRouteState.unknown();
      return;
    }
    yield BookRouteState.details(book);
  }
}
