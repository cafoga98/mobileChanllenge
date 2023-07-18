import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/core/shared/auto_route/pages.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();

  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: RegistrationRoute.page, path: '/', initial: true),
    AutoRoute(page: ComicsRoute.page, path: '/', initial: false),
  ];
}
