import 'package:feature_home/src/ui/cubit/home_main_cubit.dart';
import 'package:feature_home/src/ui/view/home_main_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_ui/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => BannerCubit(BannerState()),
        ),
        BlocProvider(
          create: (_) => HomeMainCubit(HomeMainCubitState()),
        ),
      ],
      child: HomeMainView(),
    );
  }
}
