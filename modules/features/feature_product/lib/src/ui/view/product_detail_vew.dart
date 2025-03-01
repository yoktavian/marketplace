import 'package:feature_product/src/ui/widget/product_detail_header_mv.dart';
import 'package:flutter/material.dart';
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
            Text(
              '랭킹 1위',
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFF868686),
              ),
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
        child: Column(
          children: [
            ProductDetailHeaderMV(
              avatar: 'assets/images/cats/cat-1.png',
              name: 'Name01',
              order: 1,
            ),
            Row(
              children: [
                Image.asset('assets/images/products/comment.png', width: 12),
                Text('댓글 달기..'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
