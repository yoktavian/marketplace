import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMainCubitState {
  final int activePage;

  HomeMainCubitState({ this.activePage = 0 });

  HomeMainCubitState copyWith({ int? activePage }) {
    return HomeMainCubitState(
      activePage: activePage ?? this.activePage,
    );
  }
}

class HomeMainCubit extends Cubit<HomeMainCubitState> {
  HomeMainCubit(super.initialState);

  void changePage(int index) {
    if (index == state.activePage) return;

    emit(state.copyWith(activePage: index));
  }
}
