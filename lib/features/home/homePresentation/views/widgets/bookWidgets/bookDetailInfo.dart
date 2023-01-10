// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/utilities/fontStyles.dart';
import '../bookReviews.dart';

class BookDetailInfo extends StatelessWidget {
  const BookDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Carmela full of wishes",
          style: FontStyles.mediumTitleSemiBold20,
        ),
        SizedBox(height: 10),
        Text("JK. Rowling"),
        SizedBox(height: 10),
        BookReviews(),
      ],
    );
  }
}
