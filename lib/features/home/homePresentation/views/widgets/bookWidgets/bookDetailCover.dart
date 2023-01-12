// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class BookDetailCover extends StatelessWidget {
  const BookDetailCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.37,
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: Image.asset(
          "assets/book2.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
