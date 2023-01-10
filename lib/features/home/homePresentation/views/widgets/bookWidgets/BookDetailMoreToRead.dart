// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/utilities/assets.dart';
import '../homeWidgets/bookCard.dart';

class BookMoreToRead extends StatelessWidget {
  const BookMoreToRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 150, //MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppImages.bookCoverImages.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.23,
            child: BookCard(
              imageUrl: AppImages.bookCoverImages[index],
            ),
          ),
        ),
      ),
    );
  }
}
