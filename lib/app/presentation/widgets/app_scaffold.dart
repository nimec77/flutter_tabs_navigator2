import 'package:flutter/material.dart';
import 'package:flutter_imdb/app/presentation/blocs/app_route_bloc.dart';
import 'package:flutter_imdb/app/presentation/router/tabs_router.dart';

typedef AppBarBuilder = PreferredSizeWidget Function(
  BuildContext context,
  TabsRouter tabsRouter,
);

typedef BottomNavigationBuilder = Widget Function(
  BuildContext context,
  TabsRouter,
);

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.appRouteBloc,
    required this.events,
    this.body,
    this.appBarBuilder,
    this.bottomNavigationBuilder,
  }) : super(key: key);

  final AppRouteBloc appRouteBloc;
  final List<AppRouteEvent> events;
  final Widget? body;
  final AppBarBuilder? appBarBuilder;
  final BottomNavigationBuilder? bottomNavigationBuilder;

  @override
  Widget build(BuildContext context) {
    final tabsRouter = TabsRouter(appRouteBloc: appRouteBloc, events: events);
    return Scaffold(
      appBar: appBarBuilder == null ? null : appBarBuilder!(context, tabsRouter),
      body: body,
      bottomNavigationBar: bottomNavigationBuilder == null ? null : bottomNavigationBuilder!(context, tabsRouter),
    );
  }
}
