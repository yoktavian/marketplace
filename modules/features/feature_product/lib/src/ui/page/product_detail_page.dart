import 'package:feature_product/src/ui/cubit/product_detail_cubit.dart';
import 'package:feature_product/src/ui/view/product_detail_vew.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> extraData;

  const ProductDetailPage({required this.extraData, super.key});

  @override
  Widget build(BuildContext context) {
    final name = extraData.containsKey('name') ? extraData['name'] : '';
    final avatar = extraData.containsKey('avatar') ? extraData['avatar'] : '';
    final order = extraData.containsKey('order') ? extraData['order'] as int? : 0;

    return BlocProvider(
      create: (context) => ProductDetailCubit(
        ProductDetailCubitState(
          name: name ?? '',
          avatar: avatar ?? '',
          order: order ?? 0,
        ),
      ),
      child: ProductDetailView(),
    );
  }
}
