import 'package:flutter/material.dart';

import '../../../../../../core/utilities/fontStyles.dart';

class BookDetailPreview extends StatelessWidget {
  const BookDetailPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
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
            minimumSize: Size(MediaQuery.of(context).size.width * 0.35, 50),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.center,
            child: Text(
              '19.99 £',
              style: FontStyles.mediumTitleRegular20.copyWith(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey,
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            backgroundColor: Colors.orange,
            minimumSize: Size(MediaQuery.of(context).size.width * 0.4, 50),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.35,
            alignment: Alignment.center,
            child: Text(
              'Free Preview',
              style: FontStyles.mediumTitleRegular20.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}