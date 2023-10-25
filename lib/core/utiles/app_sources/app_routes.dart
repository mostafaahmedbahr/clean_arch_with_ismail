
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/views/quotes_view.dart';
import 'package:clean_arch_with_ismail/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/random_qoutes/presentation/controller/quotes_cubit.dart';
import '../../service_locator/service_locator.dart';


class AppRouter
{

  static const kQuotesView = "/kQuotesView";


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kQuotesView,
        builder: (context, state) => const QuotesView(),
      ),

    ],
  );
}