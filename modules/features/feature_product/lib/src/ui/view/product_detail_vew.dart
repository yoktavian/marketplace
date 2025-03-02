import 'package:feature_product/src/ui/cubit/product_detail_cubit.dart';
import 'package:feature_product/src/ui/widget/product_detail_comment_mv.dart';
import 'package:feature_product/src/ui/widget/product_detail_header_mv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<StatefulWidget> createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.4,
        centerTitle: true,
        title: Column(
          children: [
            // order
            BlocBuilder<ProductDetailCubit, ProductDetailCubitState>(
              builder: (context, state) {
                return Text(
                  '랭킹 ${state.order}위',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF868686),
                  ),
                );
              },
            ),
            Text(
              '베스트 리뷰어',
              style: TextStyle(
                color: Color(0xFF1D1D1D),
                fontSize: 16,
              ),
            ),
          ],
        ),
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ProductDetailCubit, ProductDetailCubitState>(
          builder: (context, state) {
            return ListView(
              children: [
                ProductDetailHeaderMV(
                  name: state.name,
                  avatar: state.avatar,
                  order: 1,
                ),
                const SizedBox(height: 14),
                ProductDetailCommentMV(
                  name: state.name,
                  avatar: state.avatar,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
