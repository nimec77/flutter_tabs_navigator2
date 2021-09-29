// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {required String titleId,
      required TitleTypes type,
      required String primaryTitle,
      required String originalTitle,
      bool isAdult = false,
      int premiered = 0,
      int ended = 0,
      int runtimeMinutes = 0,
      String genres = ''}) {
    return _Movie(
      titleId: titleId,
      type: type,
      primaryTitle: primaryTitle,
      originalTitle: originalTitle,
      isAdult: isAdult,
      premiered: premiered,
      ended: ended,
      runtimeMinutes: runtimeMinutes,
      genres: genres,
    );
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  String get titleId => throw _privateConstructorUsedError;
  TitleTypes get type => throw _privateConstructorUsedError;
  String get primaryTitle => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  bool get isAdult => throw _privateConstructorUsedError;
  int get premiered => throw _privateConstructorUsedError;
  int get ended => throw _privateConstructorUsedError;
  int get runtimeMinutes => throw _privateConstructorUsedError;
  String get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {String titleId,
      TitleTypes type,
      String primaryTitle,
      String originalTitle,
      bool isAdult,
      int premiered,
      int ended,
      int runtimeMinutes,
      String genres});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? titleId = freezed,
    Object? type = freezed,
    Object? primaryTitle = freezed,
    Object? originalTitle = freezed,
    Object? isAdult = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? runtimeMinutes = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      titleId: titleId == freezed
          ? _value.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TitleTypes,
      primaryTitle: primaryTitle == freezed
          ? _value.primaryTitle
          : primaryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isAdult: isAdult == freezed
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as int,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as int,
      runtimeMinutes: runtimeMinutes == freezed
          ? _value.runtimeMinutes
          : runtimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String titleId,
      TitleTypes type,
      String primaryTitle,
      String originalTitle,
      bool isAdult,
      int premiered,
      int ended,
      int runtimeMinutes,
      String genres});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? titleId = freezed,
    Object? type = freezed,
    Object? primaryTitle = freezed,
    Object? originalTitle = freezed,
    Object? isAdult = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? runtimeMinutes = freezed,
    Object? genres = freezed,
  }) {
    return _then(_Movie(
      titleId: titleId == freezed
          ? _value.titleId
          : titleId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TitleTypes,
      primaryTitle: primaryTitle == freezed
          ? _value.primaryTitle
          : primaryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isAdult: isAdult == freezed
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as int,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as int,
      runtimeMinutes: runtimeMinutes == freezed
          ? _value.runtimeMinutes
          : runtimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Movie implements _Movie {
  const _$_Movie(
      {required this.titleId,
      required this.type,
      required this.primaryTitle,
      required this.originalTitle,
      this.isAdult = false,
      this.premiered = 0,
      this.ended = 0,
      this.runtimeMinutes = 0,
      this.genres = ''});

  @override
  final String titleId;
  @override
  final TitleTypes type;
  @override
  final String primaryTitle;
  @override
  final String originalTitle;
  @JsonKey(defaultValue: false)
  @override
  final bool isAdult;
  @JsonKey(defaultValue: 0)
  @override
  final int premiered;
  @JsonKey(defaultValue: 0)
  @override
  final int ended;
  @JsonKey(defaultValue: 0)
  @override
  final int runtimeMinutes;
  @JsonKey(defaultValue: '')
  @override
  final String genres;

  @override
  String toString() {
    return 'Movie(titleId: $titleId, type: $type, primaryTitle: $primaryTitle, originalTitle: $originalTitle, isAdult: $isAdult, premiered: $premiered, ended: $ended, runtimeMinutes: $runtimeMinutes, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.titleId, titleId) ||
                const DeepCollectionEquality()
                    .equals(other.titleId, titleId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.primaryTitle, primaryTitle) ||
                const DeepCollectionEquality()
                    .equals(other.primaryTitle, primaryTitle)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.isAdult, isAdult) ||
                const DeepCollectionEquality()
                    .equals(other.isAdult, isAdult)) &&
            (identical(other.premiered, premiered) ||
                const DeepCollectionEquality()
                    .equals(other.premiered, premiered)) &&
            (identical(other.ended, ended) ||
                const DeepCollectionEquality().equals(other.ended, ended)) &&
            (identical(other.runtimeMinutes, runtimeMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.runtimeMinutes, runtimeMinutes)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(titleId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(primaryTitle) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(isAdult) ^
      const DeepCollectionEquality().hash(premiered) ^
      const DeepCollectionEquality().hash(ended) ^
      const DeepCollectionEquality().hash(runtimeMinutes) ^
      const DeepCollectionEquality().hash(genres);

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required String titleId,
      required TitleTypes type,
      required String primaryTitle,
      required String originalTitle,
      bool isAdult,
      int premiered,
      int ended,
      int runtimeMinutes,
      String genres}) = _$_Movie;

  @override
  String get titleId => throw _privateConstructorUsedError;
  @override
  TitleTypes get type => throw _privateConstructorUsedError;
  @override
  String get primaryTitle => throw _privateConstructorUsedError;
  @override
  String get originalTitle => throw _privateConstructorUsedError;
  @override
  bool get isAdult => throw _privateConstructorUsedError;
  @override
  int get premiered => throw _privateConstructorUsedError;
  @override
  int get ended => throw _privateConstructorUsedError;
  @override
  int get runtimeMinutes => throw _privateConstructorUsedError;
  @override
  String get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
