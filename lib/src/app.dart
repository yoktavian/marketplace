import 'package:flutter/material.dart';
import 'package:marketplace/src/router/app_route_registrar.dart';

class MarketplaceApp extends StatelessWidget {
  const MarketplaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: const Key('router-app'),
      routerConfig: AppRouteRegistrar.routes,
    );
  }
}
