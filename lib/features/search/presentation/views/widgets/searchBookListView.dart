// ignore_for_file: file_names

import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:bookstore/core/widgets/errorMessageFailure.dart';
import 'package:bookstore/core/widgets/newestBooksLoadingBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../home/homePresentation/bloc manager/featuredBooksCubit/featured_books_cubit.dart';
import '../../../../home/homePresentation/views/widgets/homeWidgets/bestSellerBookCard.dart';

class SearchBookListView extends StatelessWidget {
  const SearchBookListView({super.key, this.imageUrl});

  final String? imageUrl;
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: ((context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: kPaddingLeftRight,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.booksList.length,
              itemBuilder: (context, index) => BestSellerBookCard(
                bookModel: state.booksList[index],
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorMessageFailure(errorMsg: state.errorMsg);
        } else {
          return const Padding(
            padding: kPaddingLeftRight,
            child: NewestBooksLoadingBox(),
          );
        }
      }),
    );
  }
}
