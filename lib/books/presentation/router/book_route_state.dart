
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_route_state.freezed.dart';

@freezed
class BookRouteState with _$BookRouteState {
  const factory BookRouteState.home() = BookRouteStateHome;

  const factory BookRouteState.details(String isbn) = BookRouteStateDetails;

  const factory BookRouteState.unknown() = BookRouteStateUnknown;
}