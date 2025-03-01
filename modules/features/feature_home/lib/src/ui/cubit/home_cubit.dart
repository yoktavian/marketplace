import 'package:feature_home/src/entity/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubitState {
  final List<User> top10Users;

  HomeCubitState({this.top10Users = const []});

  HomeCubitState copyWith({List<User>? top10Users}) {
    return HomeCubitState(top10Users: top10Users ?? this.top10Users);
  }
}

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(super.initialState) {
    // populate dummy users.
    emit(
        state.copyWith(
          top10Users: [
            User(name: 'Name01', avatarPath: 'assets/images/cats/cat-1.png'),
            User(name: 'Name02', avatarPath: 'assets/images/cats/cat-2.png'),
            User(name: 'Name03', avatarPath: 'assets/images/cats/cat-3.png'),
            User(name: 'Name04', avatarPath: 'assets/images/cats/cat-4.png'),
            User(name: 'Name05', avatarPath: 'assets/images/cats/cat-5.png'),
            User(name: 'Name06', avatarPath: 'assets/images/cats/cat-6.png'),
            User(name: 'Name07', avatarPath: 'assets/images/cats/cat-7.png'),
            User(name: 'Name08', avatarPath: 'assets/images/cats/cat-8.png'),
            User(name: 'Name09', avatarPath: 'assets/images/cats/cat-9.png'),
            User(name: 'Name10', avatarPath: 'assets/images/cats/cat-10.png'),
          ]
        )
    );
  }
}
