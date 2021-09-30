import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'app_route_bloc.freezed.dart';
part 'app_route_event.dart';
part 'app_route_state.dart';

class AppRouteBloc extends Bloc<AppRouteEvent, AppRouteState> {
  AppRouteBloc() : super(const AppRouteState.app());

  @override
  Stream<AppRouteState> mapEventToState(
    AppRouteEvent event,
  ) async* {
    yield* event.map(
      toApp: _mapToAppToState,
      toUnknown: _mapTomUnknownToState,
    );
  }

  Stream<AppRouteState> _mapToAppToState(AppRouteEventToApp event) async* {
    yield AppRouteState.app();
  }

  Stream<AppRouteState> _mapTomUnknownToState(AppRouteEventToUnknown event) async* {
    yield const AppRouteState.unknown();
  }
}
