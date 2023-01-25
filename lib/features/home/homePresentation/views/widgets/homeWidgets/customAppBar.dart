// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingLeftRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/homeLogo.png',
            height: 22,
          ),
          IconButton(
            splashRadius: 20,
            // onPressed: () => GoRouter.of(context).push(AppRoutes.searchRoute),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchBar(),
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
    );
  }
}

class MySearchBar extends SearchDelegate {
  // @override
  // ThemeData appBarTheme(BuildContext context) {
  //   return ThemeData(
  //     appBarTheme: AppBarTheme(
  //       backgroundColor: ,
  //     ),
  //   );
  // }

  @override
  InputDecorationTheme? get searchFieldDecorationTheme {
    return const InputDecorationTheme(
      fillColor: Colors.red,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        style: IconButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.green,
        ),
        onPressed: () {},
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () => GoRouter.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text("hello world");
  }
}
