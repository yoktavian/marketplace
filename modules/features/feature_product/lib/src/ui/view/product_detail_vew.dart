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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/cats/cat-1.png',
                      width: 120,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Name01',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Image.asset(
                        'assets/images/badges/top-badge.png',
                        width: 19,
                      ),
                      Text(
                        '골드',
                        style: TextStyle(
                          color: Color(0xFFFFD233),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Text('조립컴 업체를 운영하며 리뷰를 작성합니다.'),
                  ),
                ],
              ),
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
