import 'package:flutter/material.dart';

class ProductDetailCommentMV extends StatelessWidget {
  final String name;

  const ProductDetailCommentMV({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    spacing: 4,
                    children: [
                      Text(
                        '작성한 리뷰',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '총 35개',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF616161),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF868686)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(33),
                    ),
                  ),
                  child: Row(
                    spacing: 16,
                    children: [
                      Text('최신순'),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color(0xFFF0F0F0)),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 8,
              children: [
                Row(
                  spacing: 14,
                  children: [
                    Container(
                      width: 104,
                      height: 104,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFCECECE),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Image.asset(
                        'assets/images/products/ryzen.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMD 라이젠 5 5600X 버미어',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '정품 멀티팩',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              5,
                              (index) {
                                return Icon(
                                  Icons.star,
                                  color: Color(
                                    index < 4 ? 0xFFFFD233 : 0xFFF0F0F0,
                                  ),
                                  size: 21,
                                );
                              },
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '4.07',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Divider(color: Color(0xFFF0F0F0)),
                _commentSection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _commentSection() {
    return Column(
      children: [
        _commenter(),
        const SizedBox(height: 26),
        SizedBox(
          height: 14,
          child: _keywordComment(),
        ),
        const SizedBox(height: 18),
        _comments(),
        const SizedBox(height: 18),
        Divider(color: Color(0xFFF0F0F0)),
        Row(
          spacing: 4,
          children: [
            Image.asset(
              'assets/images/products/comment.png',
              width: 12,
              color: Colors.grey,
            ),
            Text('댓글 달기..'),
          ],
        ),
        const SizedBox(height: 18),
      ],
    );
  }

  Widget _commenter() {
    return Row(
      spacing: 6,
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/cats/cat-1.png',
            width: 34,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  ...List.generate(
                    5,
                    (index) {
                      return Icon(
                        Icons.star,
                        color: Color(
                          index < 4 ? 0xFFFFD233 : 0xFFF0F0F0,
                        ),
                        size: 11,
                      );
                    },
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '2022.12.09',
                    style: TextStyle(fontSize: 10, color: Color(0xFF868686)),
                  )
                ],
              )
            ],
          ),
        ),
        Icon(Icons.bookmark_border, color: Color(0xFF868686)),
      ],
    );
  }

  Widget _keywordComment() {
    final keywords = [
      '“가격 저렴해요”',
      '“CPU온도 고온”',
      '“서멀작업 가능해요”',
      '“게임 잘 돌아가요”',
    ];

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return SizedBox(width: 20);
      },
      itemBuilder: (context, index) {
        return Text(
          keywords[index],
          style: TextStyle(fontSize: 12, color: Color(0xFFA0A0A0)),
        );
      },
      itemCount: keywords.length,
    );
  }

  Widget _comments() {
    return Column(
      spacing: 18,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Image.asset(
              'assets/images/badges/lightning-badge.png',
              color: Color(
                0xFF3E3DC5,
              ),
              height: 20,
            ),
            Expanded(
              child: Text(
                '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Image.asset(
              'assets/images/badges/lightning-badge.png',
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                  ),
                  const SizedBox(height: 18),
                  _evidence(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _evidence() {
    return Row(
      spacing: 10,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Image.asset('assets/images/products/ryzen-1.png'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Image.asset('assets/images/products/ryzen-2.png'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Image.asset('assets/images/products/ryzen-3.png'),
        ),
      ],
    );
  }
}
