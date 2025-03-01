import 'package:flutter/material.dart';

class ProductDetailHeaderMV extends StatelessWidget {
  final String avatar;
  final String name;
  final int order;

  const ProductDetailHeaderMV({
    required this.avatar,
    required this.name,
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              avatar,
              width: 120,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
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
    );
  }
}
