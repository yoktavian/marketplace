import 'package:feature_home/src/ui/widget/company_profile_widget.dart';
import 'package:feature_home/src/ui/widget/top_users_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_ui/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => HomeViewState();
}

class User {
  final String name;
  final String avatarPath;

  User({required this.name, required this.avatarPath});
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

    final top10Users = [
      User(name: 'Name01', avatarPath: 'assets/images/cats/cat-1.png'),
      User(name: 'Name02', avatarPath: 'assets/images/cats/cat-2.png'),
      User(name: 'Name03', avatarPath: 'assets/images/cats/cat-3.png'),
      User(name: 'Name04', avatarPath: 'assets/images/cats/cat-4.png'),
      User(name: 'Name05', avatarPath: 'assets/images/cats/cat-5.png'),
      User(name: 'Name06', avatarPath: 'assets/images/cats/cat-6.png'),
      User(name: 'Name07', avatarPath: 'assets/images/cats/cat-7.png'),
      User(name: 'Name08', avatarPath: 'assets/images/cats/cat-8.png'),
      User(name: 'Name09', avatarPath: 'assets/images/cats/cat-9.png'),
      User(name: 'Name10', avatarPath: 'assets/images/cats/cat-10.png'),
    ];

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
        child: ListView(
          children: [
            SectionMV(
              suffixIcon: Icons.chevron_right,
              child: Column(
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
                    child: Column(
                      spacing: 16,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: ProductCardMV(
                            imagePath:
                            'assets/images/products/standing_tv.png',
                            name: 'LG전자 스탠바이미 27ART10AKPL (스탠',
                            averageRating: 4.89,
                            totalRating: 216,
                            reviews: [
                              '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
                              '스탠바이미는 사랑입니다!️',
                            ],
                            tags: ['LG전자', '편리성'],
                            badgePath:
                            'assets/images/badges/top_one_badge.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: ProductCardMV(
                            imagePath: 'assets/images/products/4k_tv.png',
                            name: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
                            averageRating: 4.36,
                            totalRating: 136,
                            reviews: [
                              '화면 잘 나오고... 리모컨 기능 좋습니다.',
                              '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
                            ],
                            tags: ['LG전자', '고화질'],
                            badgePath:
                            'assets/images/badges/top_two_badge.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: ProductCardMV(
                            imagePath: 'assets/images/products/smart_tv.png',
                            name:
                            '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
                            averageRating: 3.98,
                            totalRating: 98,
                            reviews: [
                              '반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
                              '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
                            ],
                            tags: ['라익미', '가성비'],
                            badgePath:
                            'assets/images/badges/top_three_badge.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                ],
              ),
            ),
            const SizedBox(height: 14),
            SectionMV(
              title: '골드 계급 사용자들이예요',
              description: '베스트 리뷰어 🏆 Top10',
              suffixIcon: Icons.chevron_right,
              child: TopUserWidget(
                users: top10Users,
                onUserSelected: (user) {
                  print(user.name);
                },
              ),
            ),
            const SizedBox(height: 20),
            CompanyProfileWidget(
              logo: 'LOGO Inc.',
              contact: 'review@logo.com',
              language: 'KOR',
              additionalInfo: '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
              menus: [
                '회사 소개',
                '인재 채용',
                '기술 블로그',
                '리뷰 저작권',
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbars/home.png'),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbars/category.png'),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbars/community.png'),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/navbars/profile.png'),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
