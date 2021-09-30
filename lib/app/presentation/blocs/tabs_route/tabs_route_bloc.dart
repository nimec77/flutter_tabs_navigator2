import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tabs_route_event.dart';

part 'tabs_route_state.dart';

part 'tabs_route_bloc.freezed.dart';

class TabsRouteBloc extends Bloc<TabsRouteEvent, TabsRouteState> {
  TabsRouteBloc() : super(const TabsRouteState.moviesList());

  @override
  Stream<TabsRouteState> mapEventToState(
    TabsRouteEvent event,
  ) async* {
    yield* event.map(
      toMoviesList: _mapToMoviesListToState,
      toMoviesGrid: _mapToMoviesGridToState,
      toMoviesSearch: _mapToMoviesSearchToState,
      toUnknown: _mapToUnknownToState,
    );
  }

  Stream<TabsRouteState> _mapToMoviesListToState(TabsRouteEventToMoviesList event) async* {
    yield const TabsRouteState.moviesList();
  }

  Stream<TabsRouteState> _mapToMoviesGridToState(TabsRouteEventToMoviesGrid event) async* {
    yield const TabsRouteState.moviesGrid();
  }

  Stream<TabsRouteState> _mapToMoviesSearchToState(TabsRouteEventToMoviesSearch event) async* {
    yield const TabsRouteState.moviesSearch();
  }

  Stream<TabsRouteState> _mapToUnknownToState(TabsRouteEventToUnknown event) async* {
    yield const TabsRouteState.unknown();
  }
}
