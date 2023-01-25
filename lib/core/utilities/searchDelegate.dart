// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/newestBooksCubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/homePresentation/views/widgets/homeWidgets/bestSellerBookCard.dart';
import '../widgets/errorMessageFailure.dart';
import '../widgets/newestBooksLoadingBox.dart';
import 'fontStyles.dart';

class MySearchBar extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle:
            FontStyles.mediumTitleRegular20.copyWith(color: Colors.white54),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      scaffoldBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        titleTextStyle: FontStyles.mediumTitleSemiBold20,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.red,
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = "";
          }
        },
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
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          List<BookModel> suggestions = state.booksList.where((book) {
            final result = book.volumeInfo.title!.toLowerCase();
            final input = query.toLowerCase();
            return result.contains(input);
          }).toList();
          return SingleChildScrollView(
            child: Padding(
              padding: kPaddingLeftRight.copyWith(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suggestions",
                    style: FontStyles.mediumTitleRegular20
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: suggestions.length,
                    itemBuilder: (context, index) {
                      return BestSellerBookCard(
                        bookModel: suggestions[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return ErrorMessageFailure(errorMsg: state.errorMsg);
        } else {
          return const NewestBooksLoadingBox();
        }
      },
    );
  }
}
