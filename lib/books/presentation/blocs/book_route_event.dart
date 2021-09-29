part of 'book_route_bloc.dart';

@freezed
class BookRouteEvent with _$BookRouteEvent {
  const factory BookRouteEvent.selected(Book book) = BookRouteEventSelected;

  const factory BookRouteEvent.selectedIsbn(String isbn) = BookRouteEventSelectIsbn;

  const factory BookRouteEvent.home() = BookRouteEventHome;

  const factory BookRouteEvent.unknown() = BookRouteEventUnknown;
}