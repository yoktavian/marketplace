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
  HomeCubit(super.initialState);
}
