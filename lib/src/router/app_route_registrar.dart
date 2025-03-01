import 'package:feature_home/main.dart';
import 'package:feature_product/main.dart';
import 'package:go_router/go_router.dart';

class AppRouteRegistrar {
  static final routes = GoRouter(
    initialLocation: '/',
    routes: [
      ...HomeRouteRegistrar.routes,
      ...ProductRouteRegistrar.routes,
    ],
  );
}
