part of 'app_route_bloc.dart';

@freezed
class AppRouteState with _$AppRouteState {
  const factory AppRouteState.moviesList() = AppRouteStateMoviesList;

  const factory AppRouteState.moviesGrid() = AppRouteStateMoviesGrid;

  const factory AppRouteState.moviesSearch() = AppRouteStateMoviesSearch;

  const factory AppRouteState.unknown() = AppRouteStateUnknown;
}