// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/bookCard.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/booksListView.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          CustomAppBar(),
          SizedBox(height: 20),
          BooksListView(),
        ],
      ),
    );
  }
}
