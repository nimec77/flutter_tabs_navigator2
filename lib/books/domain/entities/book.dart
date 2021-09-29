class Book {
  Book({required this.isbn, required this.title, required this.author});

  final String isbn;
  final String title;
  final String author;

  @override
  String toString() => 'Book: {isbn: $isbn}';
}

class NullBook implements Book {
  @override
  String get isbn => '';

  @override
  String get author => '';

  @override
  String get title => '';

}