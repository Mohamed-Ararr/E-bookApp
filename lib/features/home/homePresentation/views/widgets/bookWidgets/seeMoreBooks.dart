// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/utilities/fontStyles.dart';
import 'BookDetailMoreToRead.dart';

class SeeMoreBooksSection extends StatelessWidget {
  const SeeMoreBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          child: const Text(
            'You can also like',
            style: FontStyles.mediumTitleSemiBold20,
          ),
        ),
        const SizedBox(height: 20),
        const BookMoreToRead(),
      ],
    );
  }
}
