// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../home/homePresentation/views/widgets/homeWidgets/bestSellerBookCard.dart';

class SearchBookListView extends StatelessWidget {
  const SearchBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingLeftRight,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) => const BestSellerBookCard(),
      ),
    );
  }
}
