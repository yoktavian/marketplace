import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_ui/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    context.read<BannerCubit>().loadBanners(assets: [
      'images/banners/fan-banner.png',
      'images/banners/laptop-banner.png',
      'images/banners/food-banner.png',
      'images/banners/software-banner.png',
    ]);

    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'LOGO',
          style: TextStyle(
            color: Color(0xFF5D5FEF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.4,
      ),
      body: SafeArea(
        child: Column(
          spacing: 14,
          children: [
            SectionMV(
              suffixIcon: Icons.chevron_right,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: SearchInputMV(placeholder: '검색어를 입력하세요'),
                ),
                BannerMV(),
                const SizedBox(height: 28),
                SectionMV(
                  title: '제일 핫한 리뷰를 만나보세요',
                  description: '리뷰️  랭킹⭐ top 3',
                  children: [
                    Text('Top Products')
                  ],
                ),
              ],
            ),
            SectionMV(
              title: '골드 계급 사용자들이예요',
              description: '베스트 리뷰어 🏆 Top10',
              suffixIcon: Icons.chevron_right,
              children: [
                Text('Top Users')
              ],
            )
          ],
        ),
      ),
    );
  }
}
