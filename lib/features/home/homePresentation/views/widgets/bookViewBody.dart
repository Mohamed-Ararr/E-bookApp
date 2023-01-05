// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: kPaddingLeftRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => GoRouter.of(context).pop(),
                  splashRadius: 20,
                  icon: const Icon(FontAwesomeIcons.xmark, size: 28),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: const Icon(FontAwesomeIcons.cartShopping),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
