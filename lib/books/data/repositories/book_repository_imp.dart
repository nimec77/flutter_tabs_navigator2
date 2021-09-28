import 'package:flutter_imdb/books/data/providers/book_provider.dart';
import 'package:flutter_imdb/books/domain/entities/book.dart';
import 'package:flutter_imdb/books/domain/ports/repositories/book_repository.dart';

class BookRepositoryImp implements BookRepository {
  BookRepositoryImp(this.bookProvider);


  final BookProvider bookProvider;

  @override
  Future<List<Book>> getAllBooks() {
    return bookProvider.getAllBooks();
  }

  @override
  Future<Book> getBookByIsbn(String isbn) {
    return bookProvider.getBookByIsbn(isbn);
  }

  @override
  Future<bool> hasBook(String isbn) {
    return bookProvider.hasBook(isbn);
  }

}