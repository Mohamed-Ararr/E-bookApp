// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/fontStyles.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/bestSellerBookCard.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/bestSellerBooksListView.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/booksListView.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            SizedBox(height: 20),
            BooksListView(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Best Seller',
                style: FontStyles.mediumTitleSemiBold20,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: kPaddingLeftRight,
              child: BestSellerBooksListView(),
            ),
          ],
        ),
      ),
    );
  }
}
