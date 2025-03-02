import 'package:feature_product/src/ui/cubit/product_detail_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Product Detail Cubit Cases',
    () {
      test(
        'When cubit created, the state should use initial state value',
        () {
          final initialState = ProductDetailCubitState(
            name: 'jhon doe',
            avatar: 'avatar',
            order: 1,
          );
          final cubit = ProductDetailCubit(initialState);

          expect(cubit.state, initialState);
        },
      );
    },
  );
}
