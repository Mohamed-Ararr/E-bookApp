// ignore_for_file: file_names

import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookCustomAppBar.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailCover.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailInfo.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/bookDetailPreview.dart';
import 'package:bookstore/features/home/homePresentation/views/widgets/bookWidgets/seeMoreBooks.dart';
import "package:flutter/material.dart";

class BookViewBody extends StatelessWidget {
  const BookViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            BookCustomAppBar(),
            SizedBox(height: 30),
            BookDetailCover(),
            SizedBox(height: 15),
            BookDetailInfo(),
            SizedBox(height: 20),
            BookDetailPreview(),
            SizedBox(height: 30),
            SeeMoreBooksSection(),
          ],
        ),
      ),
    );
  }
}
