import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/core/di/di_config.dart';
import 'package:pulse_board_app/shared/app_theme.dart';

import 'app_route/app_routing.dart';

void main() {
  configureDependencies();
  final AppRouter appRouter = AppRouter();
  runApp(ProviderScope(child: MyApp(appRouter: appRouter)));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Pulse Board',
      theme: AppTheme.themeData,
      routerConfig: appRouter.config(),
    );
  }
}
