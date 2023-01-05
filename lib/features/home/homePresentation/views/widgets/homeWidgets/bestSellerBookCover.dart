// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:bookstore/constants.dart';

class BestSellerBookCover extends StatelessWidget {
  const BestSellerBookCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/book1.jpg'),
          ),
        ),
      ),
    );
  }
}
