import 'package:feature_home/src/entity/user.dart';
import 'package:feature_home/src/ui/cubit/home_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Home Cubit Test Cases',
    () {
      test(
        'When cubit created with certain state, state should contain correct values',
        () {
          final users = List.generate(
            2,
            (index) {
              return User(
                name: 'Name$index',
                avatarPath: 'path$index',
              );
            },
          );

          final cubit = HomeCubit(HomeCubitState(top10Users: users));
          expect(cubit.state.top10Users, users);
        },
      );
    },
  );
}
