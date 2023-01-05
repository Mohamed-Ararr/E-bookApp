// ignore_for_file: file_names

import 'package:bookstore/core/utilities/assets.dart';
import 'package:flutter/material.dart';

import 'bookCard.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppImages.bookCoverImages.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: BookCard(imageUrl: AppImages.bookCoverImages[index]),
        ),
      ),
    );
  }
}
