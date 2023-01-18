// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class BookDetailCover extends StatelessWidget {
  const BookDetailCover({super.key, required this.imageUrl});

  final String? imageUrl;
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.37,
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl ?? noCoverBookImageLink,
        ),
      ),
    );
  }
}
