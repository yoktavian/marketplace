import 'package:flutter/material.dart';

class CompanyProfileWidget extends StatelessWidget {
  final String logo;
  final String contact;
  final String language;
  final String additionalInfo;
  final List<String> menus;

  const CompanyProfileWidget({
    required this.logo,
    required this.contact,
    required this.language,
    required this.additionalInfo,
    required this.menus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            logo,
            style: TextStyle(
              color: Color(0xFF868686),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 19,
            child: Row(
              children: List.generate(
                menus.length * 2 - 1,
                (index) {
                  if (index.isEven) {
                    final normalizedIndex = index ~/ 2;
                    return Expanded(
                      child: Text(
                        menus[normalizedIndex],
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF868686),
                        ),
                      ),
                    );
                  } else {
                    return Expanded(
                      child: VerticalDivider(
                        width: 1,
                        thickness: 1,
                        indent: 2,
                        endIndent: 2,
                        color: Color(0xFFC8C8C8),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.send,
                      size: 16,
                      color: Color(0xFFC8C8C8),
                    ),
                    Text(
                      contact,
                      style: TextStyle(color: Color(0xFF868686), fontSize: 13),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                      color: Color(0xFF868686),
                    )),
                child: Row(
                  spacing: 5,
                  children: [
                    Text(
                      language,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF868686),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp, size: 10),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 14),
          Divider(
            color: Color(0xFFC8C8C8),
            height: 12,
            thickness: 1,
          ),
          Text(
            additionalInfo,
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF868686),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
