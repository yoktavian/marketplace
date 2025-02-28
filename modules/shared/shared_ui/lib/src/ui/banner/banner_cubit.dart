import 'package:flutter_bloc/flutter_bloc.dart';

enum BannerLoadState { loading, loaded, error }

class BannerState {
  final List<String> assets;
  final int activeBanner;
  final BannerLoadState loadState;

  BannerState({
    this.assets = const [],
    this.activeBanner = 0,
    this.loadState = BannerLoadState.loading,
  });

  BannerState copyWith({
    List<String>? assets,
    int? activeBanner,
    BannerLoadState? loadState,
  }) {
    return BannerState(
      assets: assets ?? this.assets,
      activeBanner: activeBanner ?? this.activeBanner,
      loadState: loadState ?? this.loadState,
    );
  }
}

class BannerCubit extends Cubit<BannerState> {
  BannerCubit(super.initialState);

  Future<void> loadBanners({
    BannerLoadState? loadState,
    List<String>? assets,
  }) async {
    if (assets != null) {
      emit(state.copyWith(assets: assets, loadState: BannerLoadState.loaded));
    } else {
      emit(state.copyWith(loadState: loadState));
    }
  }

  void changeBanner(int activeBanner) {
    print(activeBanner);
    emit(state.copyWith(activeBanner: activeBanner));
  }
}
