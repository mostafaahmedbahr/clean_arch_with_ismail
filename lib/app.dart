 import 'package:flutter/material.dart';

import 'config/themes/app_theme.dart';
import 'core/utiles/app_sources/app_routes.dart';
import 'core/utiles/app_sources/app_strings.dart';
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