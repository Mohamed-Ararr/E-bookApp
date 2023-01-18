import 'package:bookstore/core/utilities/serviceLocator.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/moreBooksCubit/more_books_cubit.dart';
import 'package:bookstore/features/search/presentation/views/searchView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/homeRepo/homeRepoImplem.dart';
import '../../features/home/homePresentation/views/bookView.dart';
import '../../features/home/homePresentation/views/homeView.dart';
import '../../features/splash/splashPresentation/views/splashView.dart';

abstract class AppRoutes {
  static String homeRoute = "/homeView";
  static String bookRoute = "/bookView";
  static String searchRoute = "/searchView";

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchRoute,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookRoute,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              MoreBooksCubit(locator.get<HomeRepoImplem>())..fetchMoreBooks(),
          child: BookView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
