import 'package:feature_home/src/ui/cubit/home_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Home Cubit Test Cases',
    () {
      test(
        'When cubit created, should emit default top users value',
        () {
          final cubit = HomeCubit(HomeCubitState());
        },
      );
    },
  );
}
