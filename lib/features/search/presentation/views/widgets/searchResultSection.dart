// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/fontStyles.dart';
import 'searchBookListView.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: kPaddingLeftRight,
          alignment: Alignment.centerLeft,
          child: const Text(
            'Search result',
            style: FontStyles.mediumTitleRegular20,
          ),
        ),
        const SizedBox(height: 10),
        const SearchBookListView(),
      ],
    );
  }
}
