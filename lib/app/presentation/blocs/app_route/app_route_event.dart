part of 'app_route_bloc.dart';

@freezed
class AppRouteEvent with _$AppRouteEvent {
  const factory AppRouteEvent.toApp() = AppRouteEventToApp;

  const factory AppRouteEvent.toUnknown() = AppRouteEventToUnknown;
}
