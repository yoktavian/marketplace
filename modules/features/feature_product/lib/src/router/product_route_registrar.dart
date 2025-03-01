import 'package:feature_product/src/ui/page/product_detail_page.dart';
import 'package:go_router/go_router.dart';

class ProductRouteRegistrar {
  static List<GoRoute> get routes => [
    GoRoute(
      path: '/product-detail',
      builder: (context, state) {
        final extraData = state.extra as Map<String, dynamic>;

        return ProductDetailPage(
          extraData: extraData,
        );
      },
    ),
  ];
}
