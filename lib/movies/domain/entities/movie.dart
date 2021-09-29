import 'package:flutter_imdb/movies/domain/enums/title_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required final String titleId,
    required final TitleTypes type,
    required final String primaryTitle,
    required final String originalTitle,
    @Default(false) final bool isAdult,
    @Default(0) final int premiered,
    @Default(0) final int ended,
    @Default(0) final int runtimeMinutes,
    @Default('') final String genres,
  }) = _Movie;
}