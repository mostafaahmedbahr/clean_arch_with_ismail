import 'package:clean_arch_with_ismail/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';

import 'config/themes/app_theme.dart';
import 'core/utiles/app_routes.dart';
import 'core/utiles/app_strings.dart';
import 'features/random_qoutes/presentation/views/quotes_view.dart';
class MyQuotesApp extends StatelessWidget {
  const MyQuotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme:appTheme(),
    );
  }
}