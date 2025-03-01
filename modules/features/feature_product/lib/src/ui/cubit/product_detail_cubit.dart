import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailCubitState {
  final String name;
  final String avatar;
  final int order;

  ProductDetailCubitState({
    required this.name,
    required this.avatar,
    required this.order,
  });
}

class ProductDetailCubit extends Cubit<ProductDetailCubitState> {
  ProductDetailCubit(super.initialState);
}
