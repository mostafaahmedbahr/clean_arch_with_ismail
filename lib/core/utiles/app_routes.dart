
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/views/quotes_view.dart';
import 'package:go_router/go_router.dart';


class AppRouter
{

  //static const kHomeView = "/homeView";


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const QuotesView(),
      ),
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),

    ],
  );
}