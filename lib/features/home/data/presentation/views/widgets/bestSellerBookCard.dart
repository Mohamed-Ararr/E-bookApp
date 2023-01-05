// ignore_for_file: file_names

import 'package:bookstore/features/home/data/presentation/views/widgets/bestSellerBookCover.dart';
import 'package:bookstore/features/home/data/presentation/views/widgets/bestSellerBookInfo.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: const [
          BestSellerBookCover(),
          SizedBox(width: 15),
          BestSellerBookInfo(),
        ],
      ),
    );
  }
}
