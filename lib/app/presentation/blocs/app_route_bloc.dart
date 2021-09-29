import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'app_route_event.dart';

part 'app_route_state.dart';

part 'app_route_bloc.freezed.dart';

class AppRouteBloc extends Bloc<AppRouteEvent, AppRouteState> {
  AppRouteBloc() : super(const AppRouteState.moviesList());

  @override
  Stream<AppRouteState> mapEventToState(
    AppRouteEvent event,
  ) async* {
    yield* event.map(
      toMoviesList: _mapToMoviesListToState,
      toMoviesGrid: _mapToMoviesGridToState,
      toMoviesSearch: _mapToMoviesSearchToState,
      toUnknown: _mapToUnknownToState,
    );
  }

  Stream<AppRouteState> _mapToMoviesListToState(AppRouteEventToMoviesList event) async* {
    yield const AppRouteState.moviesList();
  }

  Stream<AppRouteState> _mapToMoviesGridToState(AppRouteEventToMoviesGrid event) async* {
    yield const AppRouteState.moviesGrid();
  }

  Stream<AppRouteState> _mapToMoviesSearchToState(AppRouteEventToMoviesSearch event) async* {
    yield const AppRouteState.moviesSearch();
  }

  Stream<AppRouteState> _mapToUnknownToState(AppRouteEventToUnknown event) async* {
    yield const AppRouteState.unknown();
  }
}
