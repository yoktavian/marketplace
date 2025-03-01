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
    context.read<BannerCubit>().loadBanners(
      assets: [
        'images/banners/fan-banner.png',
        'images/banners/laptop-banner.png',
        'images/banners/food-banner.png',
        'images/banners/software-banner.png',
      ]
    );

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
          children: [
            Container(
              color: Colors.white,
              child: Column(
                spacing: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: SearchInputMV(placeholder: '검색어를 입력하세요'),
                  ),
                  BannerMV(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
