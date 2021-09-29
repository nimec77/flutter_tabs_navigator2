part of 'book_route_bloc.dart';

@freezed
class BookRouteState with _$BookRouteState {
  const factory BookRouteState.home(List<Book> books) = BookRouteStateHome;

  const factory BookRouteState.details(Book book) = BookRouteStateDetails;

  const factory BookRouteState.unknown() = BookRouteStateUnknown;
}