import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailCubitState {
  final String name;
  final String avatar;

  ProductDetailCubitState({required this.name, required this.avatar});
}

class ProductDetailCubit extends Cubit<ProductDetailCubitState> {
  ProductDetailCubit(super.initialState);
}
