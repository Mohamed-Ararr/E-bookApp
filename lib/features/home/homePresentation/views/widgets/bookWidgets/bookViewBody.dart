// ignore_for_file: file_names

import 'package:bookstore/features/home/data/models/book_model/book_model.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookCustomAppBar.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailCover.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailInfo.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailPreview.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/seeMoreBooks.dart';
import "package:flutter/material.dart";

class BookViewBody extends StatelessWidget {
  const BookViewBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookCustomAppBar(),
            const SizedBox(height: 30),
            BookDetailCover(
                imageUrl: bookModel.volumeInfo.imageLinks?.smallThumbnail),
            const SizedBox(height: 15),
            BookDetailInfo(
              title: bookModel.volumeInfo.title,
              author: bookModel.volumeInfo.authors?[0],
              rating: bookModel.volumeInfo.averageRating == null
                  ? "0"
                  : (bookModel.volumeInfo.averageRating).toString(),
              ratingCount: bookModel.volumeInfo.ratingsCount == null
                  ? "0"
                  : (bookModel.volumeInfo.ratingsCount).toString(),
            ),
            const SizedBox(height: 20),
            const BookDetailPreview(),
            const SizedBox(height: 30),
            const SeeMoreBooksSection(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
