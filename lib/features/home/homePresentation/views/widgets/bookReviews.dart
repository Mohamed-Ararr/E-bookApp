// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilities/fontStyles.dart';

class BookReviews extends StatelessWidget {
  const BookReviews(
      {super.key, required this.rating, required this.ratingCount});

  final String? rating;
  final String? ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color.fromARGB(255, 255, 230, 0),
        ),
        const SizedBox(width: 10),
        Text(
          rating ?? "0",
          style: FontStyles.mediumTitleRegular20,
        ),
        const SizedBox(width: 5),
        Text(
          "( ${ratingCount ?? "0"} )",
          style: FontStyles.subTitle15,
        ),
      ],
    );
  }
}
