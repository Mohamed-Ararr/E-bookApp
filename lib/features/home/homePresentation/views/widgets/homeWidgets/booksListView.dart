// ignore_for_file: file_names

import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:bookstore/core/widgets/errorMessageFailure.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/featuredBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../constants.dart';
import 'bookCard.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Container(
            padding: const EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: BookCard(
                    imageUrl: state
                        .booksList[index].volumeInfo.imageLinks.smallThumbnail),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Padding(
            padding: kPaddingLeftRight,
            child: ErrorMessageFailure(errorMsg: state.errorMsg),
          );
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                FeaturedBoxShimmer(),
                FeaturedBoxShimmer(),
                FeaturedBoxShimmer(),
              ],
            ),
          );
        }
      },
    );
  }
}

class FeaturedBoxShimmer extends StatelessWidget {
  const FeaturedBoxShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.37,
      child: Shimmer.fromColors(
        baseColor: Colors.white54,
        highlightColor: Colors.white70,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
