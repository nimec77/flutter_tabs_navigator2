part of 'tabs_route_bloc.dart';

@freezed
class TabsRouteEvent with _$TabsRouteEvent {
  const factory TabsRouteEvent.toMoviesList() = TabsRouteEventToMoviesList;

  const factory TabsRouteEvent.toMoviesGrid() = TabsRouteEventToMoviesGrid;

  const factory TabsRouteEvent.toMoviesSearch() = TabsRouteEventToMoviesSearch;
}