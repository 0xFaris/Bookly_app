import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHomeView(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

void navigateToHomeView(BuildContext context) {
  final router = GoRouter.of(context);
  Future.delayed(
    const Duration(seconds: 2),
    () {
      router.push(AppRouter.homeView);
    },
  );
}
