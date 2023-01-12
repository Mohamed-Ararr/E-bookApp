// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  const BookCard({Key? key, required this.imageUrl}) : super(key: key);

  final String? imageUrl;

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  final String noCoverBookImageLink =
      "https://bookopolis.com/img/no_book_cover.jpg";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.37,
        child: ClipRRect(
          borderRadius: kBorderRadius,
          child: Image.network(
            widget.imageUrl ?? noCoverBookImageLink,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
