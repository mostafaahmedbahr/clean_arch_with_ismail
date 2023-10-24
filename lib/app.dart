import 'package:clean_arch_with_ismail/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/utiles/app_strings.dart';
import 'features/random_qoutes/presentation/views/quotes_view.dart';
class MyQuotesApp extends StatelessWidget {
  const MyQuotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
        ),
        useMaterial3: true,
      ),
     home: QuotesView(),
    );
  }
}