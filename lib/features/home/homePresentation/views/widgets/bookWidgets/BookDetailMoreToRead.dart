// ignore_for_file: file_names

import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/featuredBooksCubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../homeWidgets/bookCard.dart';

class BookMoreToRead extends StatelessWidget {
  const BookMoreToRead({super.key});
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Container(
            padding: const EdgeInsets.only(left: 20),
            height: 150,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.23,
                  child: BookCard(
                    imageUrl: state
                        .booksList[index].volumeInfo.imageLinks.smallThumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMsg);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
