import 'package:go_router/go_router.dart';

import '../../features/home/homePresentation/views/bookView.dart';
import '../../features/home/homePresentation/views/homeView.dart';
import '../../features/splash/splashPresentation/views/splashView.dart';

abstract class AppRoutes {
  static String homeRoute = "/homeView";
  static String bookRoute = "/bookDetails";
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookRoute,
        builder: (context, state) => const BookView(),
      ),
    ],
  );
}
