// ignore_for_file: file_names

import "package:flutter/material.dart";

import 'widgets/bookWidgets/bookViewBody.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookViewBody(),
    );
  }
}
