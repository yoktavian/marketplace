import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Text('Hi'),
      ),
    );
  }
}
