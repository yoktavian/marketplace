import 'package:feature_home/main.dart';
import 'package:go_router/go_router.dart';

class HomeRouteRegistrar {
  static List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return HomePage();
          },
        ),
      ];
}
