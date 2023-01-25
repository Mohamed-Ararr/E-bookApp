// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../../../../../../core/utilities/fontStyles.dart';

class BookDetailPreview extends StatelessWidget {
  const BookDetailPreview({
    super.key,
    required this.bookPreviewLink,
  });

  final String bookPreviewLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            backgroundColor: Colors.white,
            minimumSize: Size(MediaQuery.of(context).size.width * 0.4, 50),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.35,
            alignment: Alignment.center,
            child: Text(
              "Free",
              style: FontStyles.mediumTitleRegular20.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Link(
          target: LinkTarget.defaultTarget,
          uri: Uri.parse(bookPreviewLink),
          builder: (context, followLink) => ElevatedButton(
            onPressed: bookPreviewLink.isEmpty ? null : followLink,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.grey,
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              backgroundColor: Colors.white,
              minimumSize: Size(MediaQuery.of(context).size.width * 0.35, 50),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.center,
              child: Text(
                'Book Link',
                style: FontStyles.mediumTitleRegular20.copyWith(
                  fontSize: 16,
                  color: bookPreviewLink.isEmpty ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
