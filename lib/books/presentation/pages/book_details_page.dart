import 'package:flutter/material.dart';
import 'package:flutter_imdb/books/domain/entities/book.dart';
import 'package:flutter_imdb/books/presentation/screens/book_details_screen.dart';

class BookDetailsPage extends Page<void> {
  BookDetailsPage({required this.book}) : super(key: ValueKey(book));

  final Book book;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder<void>(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
        final curveTween = CurveTween(curve: Curves.easeInOut);
        return SlideTransition(
          position: animation.drive(curveTween).drive(tween),
          child: BookDetailsScreen(
            key: key,
            book: book,
          ),
        );
      },
    );
  }
}
