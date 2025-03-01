import 'package:feature_product/src/ui/view/product_detail_vew.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, String> extraData;

  const ProductDetailPage({required this.extraData, super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDetailView();
  }
}
