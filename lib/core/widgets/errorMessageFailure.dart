// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';

import '../utilities/fontStyles.dart';

class ErrorMessageFailure extends StatelessWidget {
  const ErrorMessageFailure({super.key, required this.errorMsg});

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: Colors.white12,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            errorMsg,
            style: FontStyles.mediumTitleSemiBold20,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
