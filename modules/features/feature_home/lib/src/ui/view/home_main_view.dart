import 'package:feature_home/src/constant/page_options.dart';
import 'package:feature_home/src/ui/view/category_view.dart';
import 'package:feature_home/src/ui/view/community_view.dart';
import 'package:feature_home/src/ui/cubit/home_main_cubit.dart';
import 'package:feature_home/src/ui/view/home_view.dart';
import 'package:feature_home/src/ui/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_ui/main.dart';

class HomeMainView extends StatefulWidget {
  const HomeMainView({super.key});

  @override
  State<StatefulWidget> createState() => HomeMainViewState();
}

class HomeMainViewState extends State<HomeMainView> {
  @override
  Widget build(BuildContext context) {
    context.read<BannerCubit>().loadBanners(
      assets: [
        'images/banners/fan-banner.png',
        'images/banners/laptop-banner.png',
        'images/banners/food-banner.png',
        'images/banners/software-banner.png',
      ],
    );

    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'LOGO',
          style: TextStyle(
            color: Color(0xFF5D5FEF),
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 0.4,
      ),
      body: SafeArea(
        child: BlocBuilder<HomeMainCubit, HomeMainCubitState>(
          builder: (context, state) {
            switch(state.activePage) {
              case MainPageOptions.home:
                return HomeView();
              case MainPageOptions.category:
                return CategoryView();
              case MainPageOptions.community:
                return CommunityView();
              case MainPageOptions.profile:
                return ProfileView();
              default:
                throw('unknown index page: ${state.activePage}');
            }
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeMainCubit, HomeMainCubitState>(
        buildWhen: (previous, current) {
          return previous.activePage != current.activePage;
        },
        builder: (ctx, s) {
          const selectedColor = Color(0xFF767D88);
          const selectedTextColor = Color(0xFF1D1D1D);
          const unselectedColor = Color(0xFFD9D9D9);

          return BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: s.activePage,
            onTap: ctx.read<HomeMainCubit>().changePage,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: selectedTextColor,
            unselectedItemColor: unselectedColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/navbars/home.png',
                  color: s.activePage == MainPageOptions.home
                      ? selectedColor
                      : unselectedColor,
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/navbars/category.png',
                  color: s.activePage == MainPageOptions.category
                      ? selectedColor
                      : unselectedColor,
                ),
                label: '카테고리',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/navbars/community.png',
                  color: s.activePage == MainPageOptions.community
                      ? selectedColor
                      : unselectedColor,
                ),
                label: '커뮤니티',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/navbars/profile.png',
                  color: s.activePage == MainPageOptions.profile
                      ? selectedColor
                      : unselectedColor,
                ),
                label: '마이페이지',
              ),
            ],
          );
        },
      ),
    );
  }
}
