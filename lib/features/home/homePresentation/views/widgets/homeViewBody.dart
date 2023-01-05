// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/fontStyles.dart';

import 'bestSellerBooksListView.dart';
import 'booksListView.dart';
import 'customAppBar.dart';

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
