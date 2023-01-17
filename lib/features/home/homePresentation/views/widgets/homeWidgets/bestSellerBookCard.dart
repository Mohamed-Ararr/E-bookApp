// ignore_for_file: file_names

import 'package:bookstore/core/utilities/routes.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';

import 'bestSellerBookCover.dart';
import 'bestSellerBookInfo.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        AppRoutes.bookRoute,
        extra: bookModel,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              BestSellerBookCover(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail!),
              const SizedBox(width: 15),
              BestSellerBookInfo(bookModel: bookModel),
            ],
          ),
        ),
      ),
    );
  }
}
