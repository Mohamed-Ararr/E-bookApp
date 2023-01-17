// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookstore/features/home/data/models/book_model/book_model.dart';

import '../../../../../../core/utilities/fontStyles.dart';

class BestSellerBookInfo extends StatelessWidget {
  const BestSellerBookInfo({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              bookModel.volumeInfo.title ?? "Unknown",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: FontStyles.mediumTitleRegular20,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            bookModel.volumeInfo.authors?[0] ?? "Unknown",
            style: FontStyles.subTitle15,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Free',
                style: FontStyles.mediumTitleSemiBold20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.solidStar,
                    size: 16,
                    color: Color.fromARGB(255, 255, 230, 0),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "${bookModel.volumeInfo.averageRating ?? "0"}",
                    style: FontStyles.mediumTitleRegular20,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "(${bookModel.volumeInfo.ratingsCount ?? "0"})",
                    style: FontStyles.subTitle15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
