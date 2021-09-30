part of 'tabs_route_bloc.dart';

@freezed
class TabsRouteState with _$TabsRouteState {
  const factory TabsRouteState.moviesList() = TabsRouteStateMoviesList;

  const factory TabsRouteState.moviesGrid() = TabsRouteStateMoviesGrid;

  const factory TabsRouteState.moviesSearch() = TabsRouteStateMoviesSearch;

  const factory TabsRouteState.unknown() = TabsRouteStateUnknown;
}