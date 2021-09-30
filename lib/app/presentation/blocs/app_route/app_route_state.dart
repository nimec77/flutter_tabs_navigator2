part of 'app_route_bloc.dart';

@freezed
class AppRouteState with _$AppRouteState {
  const factory AppRouteState.app() = AppRouteStateApp;

  const factory AppRouteState.unknown() = AppRouteStateUnknown;
}