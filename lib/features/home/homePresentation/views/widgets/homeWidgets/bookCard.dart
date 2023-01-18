// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/routes.dart';
import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        AppRoutes.bookRoute,
        extra: bookModel,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.37,
        child: ClipRRect(
          borderRadius: kBorderRadius,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                noCoverBookImageLink,
            placeholder: (context, url) => const CustomCircularIndicator(),
            errorWidget: (context, url, error) {
              return Container(
                color: Colors.grey.withAlpha(100),
                child: const Center(
                  child: Icon(Icons.error_outline, size: 40),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
