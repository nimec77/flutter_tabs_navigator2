import 'package:flutter_imdb/app/presentation/blocs/app_route_bloc.dart';

class TabsRouter {
  TabsRouter({required this.appRouteBloc, required this.events});

  final AppRouteBloc appRouteBloc;
  final List<AppRouteEvent> events;

  var _activeIndex = 0;

  int get activeIndex => _activeIndex;

  set activeIndex(int index) {
    assert(index >= 0 && index < events.length);
    if (_activeIndex != index) {
      _activeIndex = index;
      appRouteBloc.add(events[_activeIndex]);
    }
  }
}
