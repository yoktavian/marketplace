import 'package:flutter_bloc/flutter_bloc.dart';

class HomeState {
  final int activePage;

  HomeState({ this.activePage = 0 });

  HomeState copyWith({ int? activePage }) {
    return HomeState(
      activePage: activePage ?? this.activePage,
    );
  }
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState);

  void changePage(int index) {
    if (index == state.activePage) return;

    emit(state.copyWith(activePage: index));
  }
}
