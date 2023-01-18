// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.37,
        child: ClipRRect(
          borderRadius: kBorderRadius,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) => const CustomCircularIndicator(),
            errorWidget: (context, url, error) {
              return Container(
                color: Colors.grey.withAlpha(100),
                child: const Center(
                  child: Icon(Icons.error_outline, size: 40),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
