import 'package:flutter_tabs_navigator2/books/domain/entities/book.dart';

abstract class BookRepository {
  Future<Book> getBookByIsbn(String isbn);

  Future<List<Book>> getAllBooks();

  Future<bool> hasBook(String isbn);
}