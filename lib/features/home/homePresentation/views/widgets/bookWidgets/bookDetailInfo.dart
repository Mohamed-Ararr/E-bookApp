// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/utilities/fontStyles.dart';
import '../bookReviews.dart';

class BookDetailInfo extends StatelessWidget {
  const BookDetailInfo({
    super.key,
    required this.title,
    required this.author,
    required this.rating,
    required this.ratingCount,
  });

  final String? title;
  final String? author;
  final String? rating;
  final String? ratingCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title ?? "Unknown",
          style: FontStyles.mediumTitleSemiBold20,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(author ?? "Uknown"),
        const SizedBox(height: 10),
        BookReviews(rating: rating, ratingCount: ratingCount),
      ],
    );
  }
}
