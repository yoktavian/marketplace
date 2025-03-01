import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_ui/src/ui/banner/banner_cubit.dart';

class BannerMV extends StatefulWidget {
  const BannerMV({super.key});

  @override
  State<StatefulWidget> createState() => _BannerMVS();
}

class _BannerMVS extends State<BannerMV> with TickerProviderStateMixin {
  late final PageController _pController;
  late final AnimationController _aController;
  late final Animation<double> _iAnimation;

  @override
  void initState() {
    super.initState();
    _pController = PageController();
    _aController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _iAnimation = Tween<double>(begin: 4, end: 9).animate(
      CurvedAnimation(parent: _aController, curve: Curves.easeIn),
    );

    _aController.forward(from: 0);
  }

  @override
  void dispose() {
    _pController.dispose();
    _aController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 221,
      width: double.infinity,
      child: BlocBuilder<BannerCubit, BannerState>(
        builder: (context, state) {
          if (state.loadState == BannerLoadState.error) {
            return SizedBox.shrink();
          }

          if (state.loadState == BannerLoadState.loading) {
            return Container(
              constraints: BoxConstraints.expand(),
              color: Colors.white70,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: [
                    CircularProgressIndicator(
                      color: Color(0xFF5D5FEF),
                    ),
                    Text('waiting banner', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            );
          }

          return Container(
            constraints: BoxConstraints.expand(),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: PageView.builder(
                    itemCount: state.assets.length,
                    controller: _pController,
                    onPageChanged: (idx) {
                      context.read<BannerCubit>().changeBanner(idx);
                      _aController.forward(from: 0);
                    },
                    itemBuilder: (context, index) {
                      return AnimatedSwitcher(
                        duration: Duration(milliseconds: 800),
                        switchInCurve: Curves.easeIn,
                        switchOutCurve: Curves.easeOut,
                        transitionBuilder: (child, animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        child: Image.asset(
                          width: double.infinity,
                          'assets/${state.assets[index]}',
                          key: ValueKey<int>(state.activeBanner),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      state.assets.length,
                      (idx) {
                        final active = state.activeBanner == idx;
                        final color = active ? Colors.white : Color(0x80FFFFFF);

                        return AnimatedBuilder(
                          animation: _aController,
                          builder: (context, child) {
                            final width = active ? _iAnimation.value : 4.0;

                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: width,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                color: color,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
