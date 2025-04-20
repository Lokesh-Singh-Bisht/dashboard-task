import 'package:auto_route/auto_route.dart';

import 'app_routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      RouteType.adaptive(enablePredictiveBackGesture: true);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DashboardRoute.page, initial: true),
    AutoRoute(page: DetailRoute.page),
    AutoRoute(page: SettingsRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
