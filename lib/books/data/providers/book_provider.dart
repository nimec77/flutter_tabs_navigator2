import 'package:flutter_imdb/books/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookProvider {
  final _books = UnmodifiableListView<Book>([
    Book(
      isbn: '978-1982182915',
      title: 'Peril Hardcover',
      author: 'Robert Costa',
    ),
    Book(
      isbn: '978-0062964618',
      title: 'Vanderbilt: The Rise and Fall of an American Dynasty',
      author: 'Katherine Howe',
    ),
    Book(
      isbn: '978-1982131739',
      title: 'Rage Hardcover',
      author: 'Bob Woodward',
    ),
    Book(
      isbn: '978-1250278456',
      title: "The Reckoning: Our Nation's Trauma and Finding a Way to Heal",
      author: 'Mary L. Trump',
    ),
    Book(
      isbn: '978-0374286675',
      title: "Wildland: The Making of America's Fury",
      author: 'Evan Osnos',
    ),
  ]);

  Future<Book> getBookByIsbn(String isbn) {
    return Future.value(_books.firstWhere((book) => book.isbn == isbn, orElse: NullBook.new));
  }

  Future<List<Book>> getAllBooks() {
    return Future.value(_books);
  }

  Future<bool> hasBook(String isbn) {
    return Future.value(_books.firstWhere((book) => book.isbn == isbn, orElse: NullBook.new) is! NullBook);
  }
}
