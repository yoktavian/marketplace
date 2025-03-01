import 'package:flutter/material.dart';

class ProductCardMV extends StatelessWidget {
  final String imagePath;
  final String name;
  final double averageRating;
  final int totalRating;
  final List<String> reviews;
  final List<String> tags;
  final String? badgePath;

  const ProductCardMV({
    required this.imagePath,
    required this.name,
    required this.averageRating,
    required this.totalRating,
    required this.reviews,
    required this.tags,
    this.badgePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          width: 104,
          height: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(
              color: Color(0xFFCECECE),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 13,
                right: 13,
                bottom: 0,
                child: Image.asset(
                  imagePath,
                ),
              ),
              if (badgePath != null)
                Positioned(
                  top: 6,
                  left: 6,
                  child: Image.asset(
                    height: 15,
                    badgePath ?? '',
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...List.generate(
                reviews.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.black,
                        ),
                        Expanded(
                          child: Text(
                            reviews[index],
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 6),
              Row(
                spacing: 3,
                children: [
                  Icon(Icons.star, size: 10, color: Color(0xFFFFD233)),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: averageRating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFD233),
                            fontSize: 10,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 2), // Space between text
                        ),
                        TextSpan(
                          text: '($totalRating)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC4C4C4),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6),
              Row(
                spacing: 4,
                children: List.generate(
                  tags.length,
                  (index) {
                    return Container(
                      height: 21,
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Text(
                        tags[index],
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF868686),
                          height: 1,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
