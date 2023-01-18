// ignore_for_file: file_names

import 'package:bookstore/features/home/data/models/book_model/book_model.dart';
import "package:flutter/material.dart";

import 'widgets/bookWidgets/bookViewBody.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookViewBody(bookModel: bookModel),
    );
  }
}
