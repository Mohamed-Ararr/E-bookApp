// ignore_for_file: file_names

import "package:flutter/material.dart";

import 'LoadingBookShimmer.dart';

class NewestBooksLoadingBox extends StatelessWidget {
  const NewestBooksLoadingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          LoadingBookShimmer(),
          LoadingBookShimmer(),
          LoadingBookShimmer(),
        ],
      ),
    );
  }
}
