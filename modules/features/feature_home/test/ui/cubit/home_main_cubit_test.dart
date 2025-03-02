import 'package:feature_home/src/ui/cubit/home_main_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late HomeMainCubit cubit;

  group(
    'Home Main Cubit Cases',
    () {
      test(
        'When change page using same page as active page, the active page would be still remain the same',
        () {
          cubit = HomeMainCubit(HomeMainCubitState(activePage: 1));
          cubit.changePage(1);
          // active page still remain the same.
          expect(cubit.state.activePage, 1);
        },
      );

      test(
        'When change page using different page as active page, state should change following the latest update',
        () {
          cubit = HomeMainCubit(HomeMainCubitState(activePage: 0));
          final newPage = 3;
          cubit.changePage(newPage);
          expect(cubit.state.activePage, newPage);
        },
      );
    },
  );
}
