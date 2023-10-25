import 'dart:async';

import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_images.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/views/quotes_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utiles/app_sources/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();


    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kQuotesView);
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => const QuotesView()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}
