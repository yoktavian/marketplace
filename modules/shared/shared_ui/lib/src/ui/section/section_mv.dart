import 'package:flutter/material.dart';

class SectionMV extends StatelessWidget {
  final String? title;
  final String? description;
  final IconData? suffixIcon;
  final Widget child;

  const SectionMV({
    super.key,
    required this.child,
    this.title,
    this.description,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 3,
                      children: [
                        Text(
                          title ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF616161),
                          ),
                        ),
                        if (description != null)
                          Text(
                            description ?? '',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (suffixIcon != null) Icon(suffixIcon)
                ],
              ),
            ),
          child,
        ],
      ),
    );
  }
}
