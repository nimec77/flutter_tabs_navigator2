// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookRouteStateTearOff {
  const _$BookRouteStateTearOff();

  BookRouteStateHome home() {
    return const BookRouteStateHome();
  }

  BookRouteStateDetails details(String isbn) {
    return BookRouteStateDetails(
      isbn,
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
    required TResult Function() home,
    required TResult Function(String isbn) details,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
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
}

/// @nodoc

class _$BookRouteStateHome implements BookRouteStateHome {
  const _$BookRouteStateHome();

  @override
  String toString() {
    return 'BookRouteState.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookRouteStateHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(String isbn) details,
    required TResult Function() unknown,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
    TResult Function()? unknown,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
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
  const factory BookRouteStateHome() = _$BookRouteStateHome;
}

/// @nodoc
abstract class $BookRouteStateDetailsCopyWith<$Res> {
  factory $BookRouteStateDetailsCopyWith(BookRouteStateDetails value,
          $Res Function(BookRouteStateDetails) then) =
      _$BookRouteStateDetailsCopyWithImpl<$Res>;
  $Res call({String isbn});
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
    Object? isbn = freezed,
  }) {
    return _then(BookRouteStateDetails(
      isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookRouteStateDetails implements BookRouteStateDetails {
  const _$BookRouteStateDetails(this.isbn);

  @override
  final String isbn;

  @override
  String toString() {
    return 'BookRouteState.details(isbn: $isbn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookRouteStateDetails &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isbn);

  @JsonKey(ignore: true)
  @override
  $BookRouteStateDetailsCopyWith<BookRouteStateDetails> get copyWith =>
      _$BookRouteStateDetailsCopyWithImpl<BookRouteStateDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(String isbn) details,
    required TResult Function() unknown,
  }) {
    return details(isbn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
    TResult Function()? unknown,
  }) {
    return details?.call(isbn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(isbn);
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
  const factory BookRouteStateDetails(String isbn) = _$BookRouteStateDetails;

  String get isbn => throw _privateConstructorUsedError;
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
    required TResult Function() home,
    required TResult Function(String isbn) details,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(String isbn)? details,
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
