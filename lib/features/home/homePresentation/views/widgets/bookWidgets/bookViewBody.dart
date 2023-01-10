// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/fontStyles.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/BookDetailMoreToRead.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookCustomAppBar.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailCover.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailPreview.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utilities/assets.dart';
import '../bookReviews.dart';
import '../homeWidgets/bookCard.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookCustomAppBar(),
            const SizedBox(height: 30),
            const BookDetailCover(),
            const SizedBox(height: 15),
            const Text(
              "Carmela full of wishes",
              style: FontStyles.mediumTitleSemiBold20,
            ),
            const SizedBox(height: 10),
            const Text("JK. Rowling"),
            const SizedBox(height: 10),
            const BookReviews(),
            const SizedBox(height: 20),
            const BookDetailPreview(),
            const SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
