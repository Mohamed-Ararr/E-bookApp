// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/customCircularIndicator.dart';

class BestSellerBookCover extends StatelessWidget {
  const BestSellerBookCover({Key? key, required this.imageUrl})
      : super(key: key);

  final String imageUrl;
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              const Center(child: Icon(Icons.error_outline)),
          placeholder: (context, url) => Container(
            color: Colors.grey.withAlpha(100),
            child: const Center(
              child: CustomCircularIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
