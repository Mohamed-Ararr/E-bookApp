// ignore_for_file: file_names

import 'package:bookstore/features/home/data/presentation/views/widgets/bestSellerBookCard.dart';
import 'package:flutter/material.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) => const BestSellerBookCard(),
    );
  }
}
