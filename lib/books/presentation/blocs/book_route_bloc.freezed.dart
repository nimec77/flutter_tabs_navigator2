// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookRouteEventTearOff {
  const _$BookRouteEventTearOff();

  BookRouteEventSelected selected(Book book) {
    return BookRouteEventSelected(
      book,
    );
  }

  BookRouteEventSelectIsbn selectedIsbn(String isbn) {
    return BookRouteEventSelectIsbn(
      isbn,
    );
  }

  BookRouteEventHome home() {
    return const BookRouteEventHome();
  }

  BookRouteEventUnknown unknown() {
    return const BookRouteEventUnknown();
  }
}

/// @nodoc
const $BookRouteEvent = _$BookRouteEventTearOff();

/// @nodoc
mixin _$BookRouteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) selected,
    required TResult Function(String isbn) selectedIsbn,
    required TResult Function() home,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteEventSelected value) selected,
    required TResult Function(BookRouteEventSelectIsbn value) selectedIsbn,
    required TResult Function(BookRouteEventHome value) home,
    required TResult Function(BookRouteEventUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteEventCopyWith<$Res> {
  factory $BookRouteEventCopyWith(
          BookRouteEvent value, $Res Function(BookRouteEvent) then) =
      _$BookRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRouteEventCopyWithImpl<$Res>
    implements $BookRouteEventCopyWith<$Res> {
  _$BookRouteEventCopyWithImpl(this._value, this._then);

  final BookRouteEvent _value;
  // ignore: unused_field
  final $Res Function(BookRouteEvent) _then;
}

/// @nodoc
abstract class $BookRouteEventSelectedCopyWith<$Res> {
  factory $BookRouteEventSelectedCopyWith(BookRouteEventSelected value,
          $Res Function(BookRouteEventSelected) then) =
      _$BookRouteEventSelectedCopyWithImpl<$Res>;
  $Res call({Book book});
}

/// @nodoc
class _$BookRouteEventSelectedCopyWithImpl<$Res>
    extends _$BookRouteEventCopyWithImpl<$Res>
    implements $BookRouteEventSelectedCopyWith<$Res> {
  _$BookRouteEventSelectedCopyWithImpl(BookRouteEventSelected _value,
      $Res Function(BookRouteEventSelected) _then)
      : super(_value, (v) => _then(v as BookRouteEventSelected));

  @override
  BookRouteEventSelected get _value => super._value as BookRouteEventSelected;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(BookRouteEventSelected(
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$BookRouteEventSelected implements BookRouteEventSelected {
  const _$BookRouteEventSelected(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BookRouteEvent.selected(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookRouteEventSelected &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  $BookRouteEventSelectedCopyWith<BookRouteEventSelected> get copyWith =>
      _$BookRouteEventSelectedCopyWithImpl<BookRouteEventSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) selected,
    required TResult Function(String isbn) selectedIsbn,
    required TResult Function() home,
    required TResult Function() unknown,
  }) {
    return selected(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
  }) {
    return selected?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteEventSelected value) selected,
    required TResult Function(BookRouteEventSelectIsbn value) selectedIsbn,
    required TResult Function(BookRouteEventHome value) home,
    required TResult Function(BookRouteEventUnknown value) unknown,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class BookRouteEventSelected implements BookRouteEvent {
  const factory BookRouteEventSelected(Book book) = _$BookRouteEventSelected;

  Book get book => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRouteEventSelectedCopyWith<BookRouteEventSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteEventSelectIsbnCopyWith<$Res> {
  factory $BookRouteEventSelectIsbnCopyWith(BookRouteEventSelectIsbn value,
          $Res Function(BookRouteEventSelectIsbn) then) =
      _$BookRouteEventSelectIsbnCopyWithImpl<$Res>;
  $Res call({String isbn});
}

/// @nodoc
class _$BookRouteEventSelectIsbnCopyWithImpl<$Res>
    extends _$BookRouteEventCopyWithImpl<$Res>
    implements $BookRouteEventSelectIsbnCopyWith<$Res> {
  _$BookRouteEventSelectIsbnCopyWithImpl(BookRouteEventSelectIsbn _value,
      $Res Function(BookRouteEventSelectIsbn) _then)
      : super(_value, (v) => _then(v as BookRouteEventSelectIsbn));

  @override
  BookRouteEventSelectIsbn get _value =>
      super._value as BookRouteEventSelectIsbn;

  @override
  $Res call({
    Object? isbn = freezed,
  }) {
    return _then(BookRouteEventSelectIsbn(
      isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookRouteEventSelectIsbn implements BookRouteEventSelectIsbn {
  const _$BookRouteEventSelectIsbn(this.isbn);

  @override
  final String isbn;

  @override
  String toString() {
    return 'BookRouteEvent.selectedIsbn(isbn: $isbn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookRouteEventSelectIsbn &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isbn);

  @JsonKey(ignore: true)
  @override
  $BookRouteEventSelectIsbnCopyWith<BookRouteEventSelectIsbn> get copyWith =>
      _$BookRouteEventSelectIsbnCopyWithImpl<BookRouteEventSelectIsbn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) selected,
    required TResult Function(String isbn) selectedIsbn,
    required TResult Function() home,
    required TResult Function() unknown,
  }) {
    return selectedIsbn(isbn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
  }) {
    return selectedIsbn?.call(isbn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (selectedIsbn != null) {
      return selectedIsbn(isbn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteEventSelected value) selected,
    required TResult Function(BookRouteEventSelectIsbn value) selectedIsbn,
    required TResult Function(BookRouteEventHome value) home,
    required TResult Function(BookRouteEventUnknown value) unknown,
  }) {
    return selectedIsbn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
  }) {
    return selectedIsbn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (selectedIsbn != null) {
      return selectedIsbn(this);
    }
    return orElse();
  }
}

abstract class BookRouteEventSelectIsbn implements BookRouteEvent {
  const factory BookRouteEventSelectIsbn(String isbn) =
      _$BookRouteEventSelectIsbn;

  String get isbn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRouteEventSelectIsbnCopyWith<BookRouteEventSelectIsbn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteEventHomeCopyWith<$Res> {
  factory $BookRouteEventHomeCopyWith(
          BookRouteEventHome value, $Res Function(BookRouteEventHome) then) =
      _$BookRouteEventHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRouteEventHomeCopyWithImpl<$Res>
    extends _$BookRouteEventCopyWithImpl<$Res>
    implements $BookRouteEventHomeCopyWith<$Res> {
  _$BookRouteEventHomeCopyWithImpl(
      BookRouteEventHome _value, $Res Function(BookRouteEventHome) _then)
      : super(_value, (v) => _then(v as BookRouteEventHome));

  @override
  BookRouteEventHome get _value => super._value as BookRouteEventHome;
}

/// @nodoc

class _$BookRouteEventHome implements BookRouteEventHome {
  const _$BookRouteEventHome();

  @override
  String toString() {
    return 'BookRouteEvent.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookRouteEventHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) selected,
    required TResult Function(String isbn) selectedIsbn,
    required TResult Function() home,
    required TResult Function() unknown,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteEventSelected value) selected,
    required TResult Function(BookRouteEventSelectIsbn value) selectedIsbn,
    required TResult Function(BookRouteEventHome value) home,
    required TResult Function(BookRouteEventUnknown value) unknown,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class BookRouteEventHome implements BookRouteEvent {
  const factory BookRouteEventHome() = _$BookRouteEventHome;
}

/// @nodoc
abstract class $BookRouteEventUnknownCopyWith<$Res> {
  factory $BookRouteEventUnknownCopyWith(BookRouteEventUnknown value,
          $Res Function(BookRouteEventUnknown) then) =
      _$BookRouteEventUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRouteEventUnknownCopyWithImpl<$Res>
    extends _$BookRouteEventCopyWithImpl<$Res>
    implements $BookRouteEventUnknownCopyWith<$Res> {
  _$BookRouteEventUnknownCopyWithImpl(
      BookRouteEventUnknown _value, $Res Function(BookRouteEventUnknown) _then)
      : super(_value, (v) => _then(v as BookRouteEventUnknown));

  @override
  BookRouteEventUnknown get _value => super._value as BookRouteEventUnknown;
}

/// @nodoc

class _$BookRouteEventUnknown implements BookRouteEventUnknown {
  const _$BookRouteEventUnknown();

  @override
  String toString() {
    return 'BookRouteEvent.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookRouteEventUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) selected,
    required TResult Function(String isbn) selectedIsbn,
    required TResult Function() home,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? selected,
    TResult Function(String isbn)? selectedIsbn,
    TResult Function()? home,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteEventSelected value) selected,
    required TResult Function(BookRouteEventSelectIsbn value) selectedIsbn,
    required TResult Function(BookRouteEventHome value) home,
    required TResult Function(BookRouteEventUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteEventSelected value)? selected,
    TResult Function(BookRouteEventSelectIsbn value)? selectedIsbn,
    TResult Function(BookRouteEventHome value)? home,
    TResult Function(BookRouteEventUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class BookRouteEventUnknown implements BookRouteEvent {
  const factory BookRouteEventUnknown() = _$BookRouteEventUnknown;
}

/// @nodoc
class _$BookRouteStateTearOff {
  const _$BookRouteStateTearOff();

  BookRouteStateHome home(List<Book> books) {
    return BookRouteStateHome(
      books,
    );
  }

  BookRouteStateDetails details(Book book) {
    return BookRouteStateDetails(
      book,
    );
  }

  BookRouteStateUnknown unknown() {
    return const BookRouteStateUnknown();
  }
}

/// @nodoc
const $BookRouteState = _$BookRouteStateTearOff();

/// @nodoc
mixin _$BookRouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Book> books) home,
    required TResult Function(Book book) details,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteStateHome value) home,
    required TResult Function(BookRouteStateDetails value) details,
    required TResult Function(BookRouteStateUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteStateCopyWith<$Res> {
  factory $BookRouteStateCopyWith(
          BookRouteState value, $Res Function(BookRouteState) then) =
      _$BookRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRouteStateCopyWithImpl<$Res>
    implements $BookRouteStateCopyWith<$Res> {
  _$BookRouteStateCopyWithImpl(this._value, this._then);

  final BookRouteState _value;
  // ignore: unused_field
  final $Res Function(BookRouteState) _then;
}

/// @nodoc
abstract class $BookRouteStateHomeCopyWith<$Res> {
  factory $BookRouteStateHomeCopyWith(
          BookRouteStateHome value, $Res Function(BookRouteStateHome) then) =
      _$BookRouteStateHomeCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

/// @nodoc
class _$BookRouteStateHomeCopyWithImpl<$Res>
    extends _$BookRouteStateCopyWithImpl<$Res>
    implements $BookRouteStateHomeCopyWith<$Res> {
  _$BookRouteStateHomeCopyWithImpl(
      BookRouteStateHome _value, $Res Function(BookRouteStateHome) _then)
      : super(_value, (v) => _then(v as BookRouteStateHome));

  @override
  BookRouteStateHome get _value => super._value as BookRouteStateHome;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(BookRouteStateHome(
      books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$BookRouteStateHome implements BookRouteStateHome {
  const _$BookRouteStateHome(this.books);

  @override
  final List<Book> books;

  @override
  String toString() {
    return 'BookRouteState.home(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookRouteStateHome &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  $BookRouteStateHomeCopyWith<BookRouteStateHome> get copyWith =>
      _$BookRouteStateHomeCopyWithImpl<BookRouteStateHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Book> books) home,
    required TResult Function(Book book) details,
    required TResult Function() unknown,
  }) {
    return home(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
  }) {
    return home?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteStateHome value) home,
    required TResult Function(BookRouteStateDetails value) details,
    required TResult Function(BookRouteStateUnknown value) unknown,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class BookRouteStateHome implements BookRouteState {
  const factory BookRouteStateHome(List<Book> books) = _$BookRouteStateHome;

  List<Book> get books => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRouteStateHomeCopyWith<BookRouteStateHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteStateDetailsCopyWith<$Res> {
  factory $BookRouteStateDetailsCopyWith(BookRouteStateDetails value,
          $Res Function(BookRouteStateDetails) then) =
      _$BookRouteStateDetailsCopyWithImpl<$Res>;
  $Res call({Book book});
}

/// @nodoc
class _$BookRouteStateDetailsCopyWithImpl<$Res>
    extends _$BookRouteStateCopyWithImpl<$Res>
    implements $BookRouteStateDetailsCopyWith<$Res> {
  _$BookRouteStateDetailsCopyWithImpl(
      BookRouteStateDetails _value, $Res Function(BookRouteStateDetails) _then)
      : super(_value, (v) => _then(v as BookRouteStateDetails));

  @override
  BookRouteStateDetails get _value => super._value as BookRouteStateDetails;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(BookRouteStateDetails(
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$BookRouteStateDetails implements BookRouteStateDetails {
  const _$BookRouteStateDetails(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BookRouteState.details(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookRouteStateDetails &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  $BookRouteStateDetailsCopyWith<BookRouteStateDetails> get copyWith =>
      _$BookRouteStateDetailsCopyWithImpl<BookRouteStateDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Book> books) home,
    required TResult Function(Book book) details,
    required TResult Function() unknown,
  }) {
    return details(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
  }) {
    return details?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteStateHome value) home,
    required TResult Function(BookRouteStateDetails value) details,
    required TResult Function(BookRouteStateUnknown value) unknown,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class BookRouteStateDetails implements BookRouteState {
  const factory BookRouteStateDetails(Book book) = _$BookRouteStateDetails;

  Book get book => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRouteStateDetailsCopyWith<BookRouteStateDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRouteStateUnknownCopyWith<$Res> {
  factory $BookRouteStateUnknownCopyWith(BookRouteStateUnknown value,
          $Res Function(BookRouteStateUnknown) then) =
      _$BookRouteStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRouteStateUnknownCopyWithImpl<$Res>
    extends _$BookRouteStateCopyWithImpl<$Res>
    implements $BookRouteStateUnknownCopyWith<$Res> {
  _$BookRouteStateUnknownCopyWithImpl(
      BookRouteStateUnknown _value, $Res Function(BookRouteStateUnknown) _then)
      : super(_value, (v) => _then(v as BookRouteStateUnknown));

  @override
  BookRouteStateUnknown get _value => super._value as BookRouteStateUnknown;
}

/// @nodoc

class _$BookRouteStateUnknown implements BookRouteStateUnknown {
  const _$BookRouteStateUnknown();

  @override
  String toString() {
    return 'BookRouteState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookRouteStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Book> books) home,
    required TResult Function(Book book) details,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Book> books)? home,
    TResult Function(Book book)? details,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRouteStateHome value) home,
    required TResult Function(BookRouteStateDetails value) details,
    required TResult Function(BookRouteStateUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRouteStateHome value)? home,
    TResult Function(BookRouteStateDetails value)? details,
    TResult Function(BookRouteStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class BookRouteStateUnknown implements BookRouteState {
  const factory BookRouteStateUnknown() = _$BookRouteStateUnknown;
}
