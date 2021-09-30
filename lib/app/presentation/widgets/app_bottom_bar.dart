//ignore_for_file:avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tabs_navigator2/app/presentation/blocs/tabs_route/tabs_route_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  final _events = const [
    TabsRouteEvent.toMoviesList(),
    TabsRouteEvent.toMoviesGrid(),
    TabsRouteEvent.toMoviesSearch(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabsRouteBloc, TabsRouteState>(
      builder: (context, state) {
        return SalomonBottomBar(
          currentIndex: _indexFromState(state),
          onTap: (index) {
            context.read<TabsRouteBloc>().add(_events[index]);
          },
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.list),
              title: const Text('List'),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.grid_3x3),
              title: const Text('Grid'),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              selectedColor: Colors.orange,
            ),
          ],
        );
      },
    );
  }

  int _indexFromState(TabsRouteState state) => state.maybeMap(
        moviesList: (_) => 0,
        moviesGrid: (_) => 1,
        moviesSearch: (_) => 2,
        orElse: () => 0,
      );
}
