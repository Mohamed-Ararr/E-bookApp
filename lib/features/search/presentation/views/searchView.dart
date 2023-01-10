// ignore_for_file: file_names

import 'package:bookstore/features/search/presentation/views/widgets/searchResultSection.dart';
import 'package:flutter/material.dart';

import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utilities/fontStyles.dart';
import 'package:bookstore/features/search/presentation/views/widgets/customTextField.dart';

import 'widgets/searchBookListView.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Search'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 10),
              CustomTextField(),
              SizedBox(height: 10),
              SearchResultSection()
            ],
          ),
        ),
      ),
    );
  }
}
