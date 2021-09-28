class BookRoutePath {
  BookRoutePath.home()
      : isbn = '',
        isUnknown = false;

  BookRoutePath.details(this.isbn) : isUnknown = false;

  BookRoutePath.unknown()
      : isbn = '',
        isUnknown = true;

  late final String isbn;
  late final bool isUnknown;

  bool get isHomePage => isbn.isEmpty;

  bool get isDetailsPage => isbn.isNotEmpty;
}
