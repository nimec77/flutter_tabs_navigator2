import 'package:flutter/material.dart';
import 'package:flutter_imdb/books/domain/entities/book.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({Key? key, required this.books, required this.onTapped}) : super(key: key);

  final List<Book> books;
  final ValueChanged<Book> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books List Screen'),
      ),
      body: ListView(
        children: books
            .map((book) => ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  onTap: () => onTapped(book),
                ))
            .toList(),
      ),
    );
  }
}
