// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';

import 'positionPlayButton.dart';

class BookCard extends StatefulWidget {
  const BookCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.37,
          child: ClipRRect(
            borderRadius: kBorderRadius,
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const PositionPlayButton(),
      ],
    );
  }
}
