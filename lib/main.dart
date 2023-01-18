import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/routes.dart';
import 'package:bookstore/core/utilities/serviceLocator.dart';
import 'package:bookstore/features/home/data/homeRepo/homeRepoImplem.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/featuredBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/homePresentation/bloc manager/newestBooksCubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create: (context) => FeaturedBooksCubit(
            locator.get<HomeRepoImplem>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider<NewestBooksCubit>(
          create: (context) => NewestBooksCubit(
            locator.get<HomeRepoImplem>(),
          )..fetchNewestBooks(),
        ),
        // BlocProvider(
        //   create: (context) => MoreBooksCubit(
        //     locator.get<HomeRepoImplem>(),
        //   )..fetchMoreBooks(),
        // ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
