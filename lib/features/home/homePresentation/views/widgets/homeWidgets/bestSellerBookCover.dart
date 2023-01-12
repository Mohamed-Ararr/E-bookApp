// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:bookstore/constants.dart';

class BestSellerBookCover extends StatelessWidget {
  const BestSellerBookCover({Key? key, required this.imageLink})
      : super(key: key);

  final String? imageLink;
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageLink ?? noCoverBookImageLink),
          ),
        ),
      ),
    );
  }
}
