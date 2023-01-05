// ignore_for_file: file_names

import 'package:bookstore/core/utilities/routes.dart';

import 'bestSellerBookCover.dart';
import 'bestSellerBookInfo.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRoutes.bookRoute),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SizedBox(
          height: 130,
          child: Row(
            children: const [
              BestSellerBookCover(),
              SizedBox(width: 15),
              BestSellerBookInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
