import 'package:feature_home/src/ui/home_view.dart';
import 'package:flutter/material.dart';

class TopUserWidget extends StatelessWidget {
  final List<User> users;

  const TopUserWidget({ required this.users, super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 106,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        itemBuilder: (context, index) {
          final user = users[index];

          if (index == 0) {
            return Container(
              width: 62,
              margin: EdgeInsets.only(left: 16),
              child: Column(
                spacing: 8,
                children: [
                  SizedBox(
                    height: 62 + 10,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          width: 62,
                          height: 62,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFFD233),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                user.avatarPath,
                                fit: BoxFit.cover,
                                width: 62, // Use fixed width here
                                height: 62, // Use fixed height here
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 4,
                          child: Image.asset(
                            'assets/images/badges/top_badge.png',
                            width: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    user.name,
                    style: TextStyle(
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              const SizedBox(height: 12),
              SizedBox(
                height: 62,
                child: ClipOval(
                  child: Image.asset(
                    user.avatarPath,
                    fit: BoxFit.cover,
                    width: 58, // Use fixed width here
                    height: 58, // Use fixed height here
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                user.name,
                style: TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 14,
                ),
              ),
            ],
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
