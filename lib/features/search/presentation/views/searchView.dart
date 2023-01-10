// ignore_for_file: file_names

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/fontStyles.dart';
import 'package:bookstore/features/search/presentation/views/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CustomTextField(),
            const SizedBox(height: 10),
            Container(
              padding: kPaddingLeftRight,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Search result',
                style: FontStyles.mediumTitleRegular20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
