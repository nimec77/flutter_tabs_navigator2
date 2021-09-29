part of 'app_route_bloc.dart';

@freezed
class AppRouteEvent with _$AppRouteEvent {
  const factory AppRouteEvent.toMoviesList() = AppRouteEventToMoviesList;

  const factory AppRouteEvent.toMoviesGrid() = AppRouteEventToMoviesGrid;

  const factory AppRouteEvent.toMoviesSearch() = AppRouteEventToMoviesSearch;

  const factory AppRouteEvent.toUnknown() = AppRouteEventToUnknown;
}