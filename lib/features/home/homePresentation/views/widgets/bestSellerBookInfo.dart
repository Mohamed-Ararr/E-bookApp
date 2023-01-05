// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../core/utilities/fontStyles.dart';
import 'bookPrice&Review.dart';

class BestSellerBookInfo extends StatelessWidget {
  const BestSellerBookInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
              "The dress and the girl",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: FontStyles.mediumTitleRegular20,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'JK. Rowling',
            style: FontStyles.subTitle15,
          ),
          const SizedBox(height: 8),
          const BookReview(),
        ],
      ),
    );
  }
}
